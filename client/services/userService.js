import axios from "axios";

const url = "http://localhost:5000/users/";

class Dealerservice {

    static async registerUser(obj) {
        try {
            const response = await axios.post(url + "/rgnewuser", { obj })
            return response.data

        } catch (err) {
            return err
        }
    }

    static async getStatus(id) {
        try {
            const response = await axios.get(url + "/userstatus", {
                params: {
                    uid: id
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }
    static async getSingleDealer(name) {
        try {
            const response = await axios.get(url + "/name", {
                params: {
                    dealer: name
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }

    static async searchDealer(value) {
        try {
            const response = await axios.get(url + "/search", {
                params: {
                    key: value
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }
    static async editStatus(obj) {
        try {
            await axios.put(url + "/status", { obj })

        } catch (err) {
            return err
        }

    }
    static async updateUser(id) {
        try {
            const response = await axios.get(url + "/id", {
                params: {
                    userid: id
                }
            })
            return response.data

        } catch (err) {
            return err
        }

    }
    static async deleteUser(id) {
        try {
            const response = await axios.delete(url + "/delete", {
                params: {
                    id: id
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }

    static async readMessages() {
        try {
            await axios.put(url + "/readmessages")
        } catch (err) {
            return err
        }
    }

    static async getAllDealers() {
        try {
            const response = await axios.get(url + "/dealers")
            return response.data

        } catch (err) {
            return err
        }
    }
    static async getActiveDealers() {
        try {

            const promise = axios.get(url + "/activedealers")
            const data = promise.then((response) => response.data)
            return data
        } catch (err) {
            return err
        }

    }
    static async getContactNewMessages() {
        try {

            const promise = axios.get(url + "/messages")
            const data = promise.then((response) => response.data)
            return data
        } catch (err) {
            return err
        }
    }
    static async updateRole(obj) {
        try {
            await axios.put(url + "/updaterole", { obj })

        } catch (err) {
            return err
        }
    }
    static async updateCompanyname(obj) {
        try {
            await axios.put(url + "/updatecompanyname", { obj })
        } catch (err) {
            return err
        }
    }

    static async updateEmail(obj) {
        try {
            await axios.put(url + "/updateemail", { obj })

        } catch (err) {
            return err
        }
    }
    static async updateFname(obj) {
        try {
            await axios.put(url + "/updatefname", { obj })

        } catch (err) {
            return err
        }
    }
    static async updateLname(obj) {
        try {
            await axios.put(url + "/updatelname", { obj })
        } catch (err) {
            return err
        }
    }
    static async updatePhone(obj) {
        try {
            await axios.put(url + "/updatephone", { obj })

        } catch (err) {
            return err
        }
    }

    static async registerComments(obj) {
        try {
            const response = await axios.post(url + "/comments", { obj })
            return response.data
        } catch (err) {
            return err
        }

    }
    static async sendFeedbacks(obj) {
        try {
            const response = await axios.post(url + "/sendfeedback", { obj })
            return response.data
        } catch (err) {
            return err
        }

    }
    static async getFeedback(email) {
        try {
            const response = await axios.get(url + "/chat", {
                params: {
                    useremail: email
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }

    static async getadmin() {
        try {
            const response = await axios.get(url + "/admin")
            return response.data

        } catch (err) {
            return err
        }
    }
    static async postNotice(obj) {
        try {
            const response = await axios.post(url + "/postnotice", { obj })
            return response.data

        } catch (err) {
            return err
        }
    }
    static async showNotice() {
        try {
            const response = await axios.get(url + "/shownotice")
            return response.data

        } catch (err) {
            return err
        }
    }

}

export default Dealerservice;