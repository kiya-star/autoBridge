import axios from "axios";
const state = {

    products: []
}
const getters = {}
const mutations = {
    SETPRODUCTS: (sate, response) => sate.products = response


}
const actions = {

    async fetchProducts({ commit }) {
        const response = await axios.get('http://localhost:5000/products/1');
        commit("SETPRODUCTS", response);

    },

}

export default {
    state,
    getters,
    mutations,
    actions

}