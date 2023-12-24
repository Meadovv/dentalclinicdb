const database = require('../../../../config/mysql')

const getDoctorRatingList = (req, res) => {
    const sql = 'SELECT * FROM danhgiaNhasi'

    database.query(sql, (err, result) => {
        if (err) {
            return res.status(200).send({
                success: false,
                message: err.message
            })
        }
        return res.status(200).send({
            success: true,
            message: 'Lấy thành công',
            list: result
        })
    })
}

const createDoctorRating = (req, res) => {
    sql = `INSERT INTO danhgiaNhasi (MAKH, NGAYKHAM, SOSAO, BINHLUAN) VALUES (?, ?, ?, ?);`
    params = [
        req.body.data.ma_kh,
        req.body.data.ngay_kham,
        req.body.data.so_sao,
        req.body.data.binh_luan
    ]
    database.query(sql, params, (err, result) => {
        if (err) {
            return res.status(200).send({
                success: false,
                message: err.message
            })
        }
        return res.status(200).send({
            success: true,
            message: 'Success',
            id: result.insertId
        })
    })
}

module.exports = {
    getDoctorRatingList,
    createDoctorRating
}