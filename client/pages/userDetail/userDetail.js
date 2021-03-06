// pages/userDetail/userDetail.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        gender: ['男性', '女性', '伪娘', '假小子'],
        index: 0,
        date: '2016-09-01'
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {

    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function() {

    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function() {

    },

    /**
     * 生命周期函数--监听页面隐藏
     */
    onHide: function() {

    },

    /**
     * 生命周期函数--监听页面卸载
     */
    onUnload: function() {

    },

    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh: function() {

    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function() {

    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function() {

    },
    updateUname: function() {
        wx.navigateTo({
            url: '/pages/updateUname/updateUname' //?id=9&age=19'
        })
    },
    // 点击修改头像，调出手机相册
    changeAvatar: function() {
        wx.chooseImage({
            count: 1,
            sizeType: ['original', 'compressed'],
            sourceType: ['album', 'camera'],
            success(res) {
                // tempFilePath可以作为img标签的src属性显示图片
                const tempFilePaths = res.tempFilePaths
            }
        })
    },
    // 选择性别
    bindPickerChange: function(e) {
        //console.log('picker发送选择改变，携带值为', e.detail.value)
        this.setData({
            index: e.detail.value
        })
    },
    // 选择日期
    bindDateChange: function(e) {
        //console.log('picker发送选择改变，携带值为', e.detail.value)
        this.setData({
            date: e.detail.value
        })
    }


})