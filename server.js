const express = require('express')
const morgan = require('morgan')
const dotenv = require('dotenv')
dotenv.config()

const database = require('./config/mysql')


const {
    getDoctorRatingList,
    createDoctorRating
} = require('./v1/function/Rating/Doctor/doctorRating')

const {
    getServiceRatingList,
    createServiceRating
} = require('./v1/function/Rating/Service/servicesRating')


const app = express()
app.use(express.json({
    limit: '5mb'
}))
app.use(morgan('dev'))

app.listen(process.env.SERVER_POST, () => {
    console.log(`Server is running on POST ${process.env.SERVER_POST}`)
})

app.get('/', (req, res) => {
    res.status(200).send({
        success: true,
        message: 'Server is running!'
    })
})

app.get('/api/v1/function/rating/doctor/get-rating-list', getDoctorRatingList)
app.get('/api/v1/function/rating/service/get-rating-list', getServiceRatingList)

app.post('/api/v1/function/rating/doctor/create-rating', createDoctorRating)
app.post('/api/v1/function/rating/service/create-rating', createServiceRating)