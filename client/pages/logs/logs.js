//logs.js
const util = require('../../utils/util.js')

Page({
    data: {
        list: {}
    },
    onLoad: function() {
        //     this.setData({
        //       logs: (wx.getStorageSync('logs') || []).map(log => {
        //         return util.formatTime(new Date(log))
        //       })
        //     })
        wx.request({
            url: 'http://127.0.0.1:3000/list',
            data: {},
            method: "GET",
            dataType: "json",
            success: (res, status) => {
                console.log(status, res);
                this.setData({
                    list: res.data
                })
            },
            dail: (res) => {
                console.log("数据请求错误" + res)
            }
        })

    },
    jumpShopList: function(e) {
        var tid = e.target.dataset.tid
        wx.reLaunch({
            url: '/pages/shopList/shopList?tid=' + tid
        })
    }
})