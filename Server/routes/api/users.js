const mysql = require('mysql');
const express = require('express');
const nodemailer = require('nodemailer');
const router = express.Router();
const connection = require("../../config/db.config");
const md5 = require('md5');
var timeElapsed = Date.now();
var today = new Date(timeElapsed);
var now = today.toUTCString();

//register new user
router.post('/rgnewuser', (req, res) => {
    try {
        if (req.body.obj.fname == "" || req.body.obj.lname == "" || req.body.obj.email == "" || req.body.obj.pass == "" || req.body.obj.phon == "" || req.body.obj.desc == "" || req.body.obj.cname == "") {
            res.send({ error: 'All are required fields' })
        } else {
            connection.query("INSERT INTO users(fname,lname,email,pass,phone,description,companyname) VALUES('" +
                req.body.obj.fname + "','" +
                req.body.obj.lname + "','" +
                req.body.obj.email + "','" +
                md5(req.body.obj.password) + "','" +
                req.body.obj.phone + "','" +
                req.body.obj.desc + "','" +
                req.body.obj.cname + "') ", (err, rows, fields) => {
                    if (!err)
                        res.send(rows)
                    else
                        res.send({ error: 'Incorrect information' })
                })
        }

    } catch (error) {
        return error;
    }
});

//login
router.post("/login", (req, res) => {
    connection.query('SELECT * FROM users  WHERE status=? && email=? && pass=?', ["1", req.body.email, md5(req.body.pass)], (err, rows, fields) => {
        if (!err) {
            res.send(rows)
        } else
            res.sendStatus(404)
    })
});
//post comments
router.post('/comments', (req, res) => {
    try {
        if (req.body.obj.email == "" || req.body.obj.message == "") {
            res.send({
                error: 'Error sending comment'
            });
        } else {
            connection.query("INSERT INTO contacts(email,message) VALUES('" +
                req.body.obj.email + "','" +
                req.body.obj.message + "') ", (err, rows, fields) => {
                    if (!err)
                        res.send(rows)
                    else
                        res.send({ error: "Error sending comment" })
                })
        }

    } catch (error) {
        return error;

    }
});

//get all comments
router.get("/messages", (req, res) => {
    connection.query('SELECT * FROM contacts  WHERE seen=0', (err, rows, fields) => {
        if (!err) {
            res.send(rows);
        } else
            console.log(err);
    })

});
//search user by id
router.get("/id", (req, res) => {

    connection.query('SELECT * FROM users  WHERE id=?', [req.query.userid], (err, rows, fields) => {
        if (!err) {
            res.send(rows);
        } else
            console.log(err);
    })
});
//set comment seen status (admin page)
router.put("/readmessages", (req, res) => {
    //! status
    connection.query('UPDATE contacts set seen=1', (err, rows, fields) => {
        if (!err) {
            res.send(rows);
        } else
            console.log(err);
    })

});

//toggle status (admin page)
router.put("/status", (req, res) => {
    //! status
    const flag = req.body.obj.state;
    let status = 0;
    if (flag == 0) {
        status = 1
    } else if (flag == 1) {
        status = 0
    } else {}
    connection.query('UPDATE users set status="' +
        status + '" WHERE id="' +
        req.body.obj.id + '"', (err, rows, fields) => {
            if (!err) {
                res.send(rows);
            } else
                console.log(err);
        })

});
//get all users (admin page)
router.get("/dealers", (req, res) => {
    connection.query('SELECT * FROM users WHERE id !=1 ORDER BY regTime DESC', (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

router.get("/userstatus", (req, res) => {

        connection.query('SELECT status FROM users  WHERE id=?', [req.query.uid], (err, rows, fields) => {
            if (!err) {
                res.send(rows);
            } else
                console.log(err);

        });
    })
    //delete user
router.delete("/delete", (req, res, next) => {
    connection.query('DELETE FROM users WHERE id="' +
        req.query.id + '" ', (err, rows, fields) => {
            if (!err) {
                res.send(rows);
            } else
                console.log(err);
        })
});

//update role
router.put("/updaterole", (req, res, next) => {
    connection.query('UPDATE users set role="' +
        req.body.obj.role + '" WHERE id="' +
        req.body.obj.id + '"', (err, rows, fields) => {
            if (!err) {
                res.send(rows);
            } else
                console.log(err);
        })
});

//search users
router.get("/search", (req, res) => {
    connection.query('SELECT * FROM users  WHERE role !="admin" && (fname LIKE "%' +
        req.query.key + '%" || lname LIKE "%' +
        req.query.key + '%" || companyname LIKE "%' +
        req.query.key + '%" )', (err, rows, fields) => {
            if (!err) {
                res.send(rows);
            } else
                console.log(err);
        });
});

//get active dealers
router.get("/activedealers", (req, res) => {
        connection.query("SELECT * FROM users  WHERE status=1 && role='dealer'", (err, rows, fields) => {
            if (!err) {
                res.send(rows);
            } else
                console.log(err);
        })

    })
    //get specific dealer product
router.get("/name", (req, res, next) => {
    connection.query('SELECT * FROM products INNER JOIN users ON products.user_id=users.id WHERE products.status=1 && users.companyname= ?', [req.query.dealer], (err, rows, fields) => {
        if (!err) {
            res.send(rows);
        } else
            console.log(err);
    })
});

// send feedback /txt message
router.post("/sendfeedback", (req, res) => {
    try {
        connection.query("INSERT INTO feedback (fromm, too, message,at, uid) VALUES ('" + req.body.obj.email + "','" + req.body.obj.to + "','" + req.body.obj.message + "','" +
            now + "','" + req.body.obj.uid + "')")
    } catch (error) {

    }
})

// view feedbacks / chats
router.get("/chat", (req, res) => {
    connection.query(`
                        SELECT * FROM feedback INNER JOIN users ON feedback.uid = users.id WHERE too = ? || fromm = ? ORDER BY feedback.id ;
                        `, [req.query.useremail, req.query.useremail], (err, rows, fields) => {
        if (!err) {
            res.send(rows);
        } else
            console.log(err);
    })

})

//get admin user
router.get("/admin", (req, res) => {
    connection.query("SELECT * FROM users  WHERE role='admin' ", (err, rows, fields) => {
        if (!err) {
            res.send(rows);
        } else
            console.log(err);
    })
})
router.post("/postnotice", (req, res) => {
    connection.query("INSERT INTO notice(title, body, time) VALUES('" +
        req.body.obj.title + "', '" +
        req.body.obj.mBody + "', '" +
        now + "')", (err, rows, fields) => {
            if (!err) {
                res.send({ success: "Notice Posted" });
            } else
                console.log(err);
        })
})
router.get("/shownotice", (req, res) => {
    connection.query("SELECT * FROM notice", (err, rows, fields) => {
        if (!err) {
            res.send(rows);
        } else
            console.log(err);
    })
})
router.get("/resetpassword", (req, res) => {
    let transport = nodemailer.createTransport({
        host: 'smtp.gmail.com',
        port: 465,
        secure: true,
        auth: {
            user: 'israelkumame@gmail.com',
            pass: '@@yayneman@@'
        }
    });
    const message = {
        from: 'israelkumame@gmail.com', // Sender address
        to: req.query.key, // List of recipients
        subject: 'Design Your Model S | Tesla', // Subject line
        text: 'Have the most fun you can in a car. Get your Tesla today!' // Plain text body
    };
    transport.sendMail(message, function(err, info) {
        if (err) {
            console.log(err)
        } else {
            console.log(info);
        }
    });
})
module.exports = router;