const $ = require("jquery");

//import * as Cookies from 'js-cookie'
const Cookies = require('js-cookie')

const URLjoin = require('url-join')


function get_home_url() {
    const current_url = window.location.href
    const home_url = current_url.split('/').slice(0,3).join('/') + '/'
    return home_url
}

function main() {
    const home_url = get_home_url()
    const webcam_url = URLjoin(home_url, 'webcam')

    const adult = Cookies.get("adult")
    if ( adult == "yes") {

    } else if (adult == "no") {
        window.close()
    } else if (adult == undefined) {
        //window.location.href = webcam_url
    }
}


main()
