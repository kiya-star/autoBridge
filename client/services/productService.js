/**
 *   web service which communicate with backend rest api & feed product related informations 
 *   as per user request.
 *   Author:abebaw ,beza lidet & tarik
     Last Modified Date: feb 27 , 2021

 */
import axios from "axios";

const url = "https://localhost:5000/products/";

class Productservice {

    static async initCart(obj) {

        try {
            await axios.post(url + "/initCart", { obj })

        } catch (err) {
            return err
        }

    }
    static async showCart(cartid) {
        try {
            const response = await axios.get(url + "/cartitem", {
                params: {
                    key: cartid

                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }
    static async getTotalPrice(cid) {
        try {
            const response = await axios.get(url + "/gettotal", {
                params: {
                    key: cid

                }
            })
            return response.data
        } catch (err) {
            return err
        }
    }
    static async updateProductQuantity(obj) {
        try {
            const response = await axios.put(url + "/updatePQuantityInCart", {
                obj

            })
            return response.data
        } catch (err) {
            return err
        }
    }
    static async itemSold(obj) {
        try {
            const response = await axios.put(url + "/cartProductStatus", {
                obj

            })
            return response.data
        } catch (err) {
            return err
        }
    }
    static async removeCartItem(id) {
        try {
            await axios.delete(url + "/removecartitem", {
                params: {
                    key: id

                }
            })
        } catch (err) {
            return err
        }
    }
    static async placeOrder(obj) {
        try {
            await axios.put(url + "/placeorder", { obj })

        } catch (err) {
            return err
        }
    }
    static async getSoldItems(uid) {


        try {
            const response = await axios.get(url + "/soldItems", {
                params: {
                    key: uid
                }
            })
            return response.data
        } catch (err) {
            return err
        }

    }
    static async cartItemStatus(obj) {
        try {
            const response = await axios.put(url + "/removeFromCartNotDelivered", { obj })
            return response.data
        } catch (err) {
            return err
        }
    }
    static async likeProduct(obj) {
        try {
            const response = await axios.put(url + "/likeproduct", { obj })
            return response.data
        } catch (err) {
            return err
        }
    }
    static async dislikeProduct(id) {
        try {
            const response = await axios.put(url + "/dislike", { id })
            return response.data
        } catch (err) {
            return err
        }
    }
    static async registerComments(obj) {
        try {
            await axios.post(url + "/comments", { obj })


        } catch (err) {
            return err
        }

    }
    static async getLikes() {
        try {
            const response = await axios.get(url + "/likes")
            return response.data
        } catch (err) {
            return err
        }
    }
    static async getProductToupdate(id) {
        try {
            const response = await axios.get(url + "/producttoupdate", {
                params: {
                    pid: id
                }

            })
            return response.data
        } catch (err) {
            return err
        }
    }

    static async getProducts(uid) {
        try {

            const response = await axios.get(url + "/dealersproduct", {
                params: {
                    dealerId: uid
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }

    static getAllProducts() {
        try {

            const promise = axios.get(url + "/all")
            const data = promise.then((response) => response.data)
            return data
        } catch (err) {
            return err
        }
    }
    static relatedProducts() {
            try {

                const promise = axios.get(url + "/related")
                const data = promise.then((response) => response.data)
                return data
            } catch (err) {
                return err
            }
        }
        //
    static async getSingleProduct(code) {
        try {
            const response = await axios.get(url + "/pcode", {
                params: {
                    pcode: code
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }
    static async adminProductSearch(searchtxt) {
        try {
            const response = await axios.get(url + "/adminsearch", {
                params: {
                    key: searchtxt
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }
    static async dealerProductSearch(uid, key) {
        try {
            const response = await axios.get(url + "/dealerproductsearch", {
                params: {
                    key: key,
                    uid: uid

                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }
    static async search(value) {
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
    static async searchFromCart(id, key) {
        try {
            const response = await axios.get(url + "/searchCart", {
                params: {
                    id: id,
                    key: key

                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }
    static async getProductByYear(year) {
        try {
            const response = await axios.get(url + "/byyear", {
                params: {
                    key: year
                }
            })
            return response.data

        } catch (err) {
            return err
        }
    }

    static async getProductByCountry(country) {
        try {
            const response = await axios.get(url + "/specificlocation", {
                params: {
                    key: country
                }
            })
            return response.data

        } catch (err) {
            return err
        }

    }
    static getallCountries() {
        try {

            const promise = axios.get(url + '/location')
            const data = promise.then((response) => response.data)
            return data
        } catch (err) {
            return err
        }
    }
    static getYear() {
        try {

            const promise = axios.get(url + '/year')
            const data = promise.then((response) => response.data)
            return data
        } catch (err) {
            return err
        }
    }
    static async toogleProductStatus(obj) {
        try {
            await axios.put(url + "/status", { obj })
        } catch (err) {
            return err
        }

    }
    static async deleteProduct(pid) {
        try {
            await axios.delete(url + "/deleteproduct", {
                params: {
                    key: pid
                }
            })

        } catch (err) {
            return err
        }

    }
    static async createProducts(obj) {
        try {
            const response = await axios.post(url, {
                obj
            })
            return response.data
        } catch (error) {
            return error
        }
    }

}

export default Productservice;