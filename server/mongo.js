require("dotenv").config();
const mongoose, { Schema } = require('mongoose');

mongoose.connect(`mongodb://localhost/${process.env.DB_NAME}`);

const productSchema = mongoose.Schema({
  review: {
    type: mongoose.ReviewSchema,
    ref: 'Review',
  },
  meta: {
    type: mongoose.metaSchema,
    ref: 'Meta'
  },
});


const reviewSchema = mongoose.Schema({
  rating: Number,
  summary: String,
  recommended: Boolean,
  response: String,
  body: String,
  date: String,
  name: String,
  helpfulness: Number,
  photos: Array,
  reported: Boolean,
});


const metaSchema = mongoose.Schema({
  ratings: {
    type: mongoose.ratingSchema,
    ref: 'Rating',
  },
  recommended: {
    type: mongoose.recommendedSchema,
    ref: 'Recommended',
  },
  characteristics: {
    type: mongoose.characteristics,
    ref: 'Characteristics',
  },
});


const ratingSchema = mongoose.Schema({
  one: Number,
  two: Number,
  three: Number,
  four: Number,
  five: Number,
});


const recommendedSchema = mongoose.Schema({
  true: Number,
  false: Number,
});


const characteristicsSchema = mongoose.Schema({
  one: Number,
  two: Number,
  three: Number,
  four: Number,
  five: Number,
});

const product = mongoose.model('Product', productSchema);
const review = mongoose.model('Review', reviewSchema);
const meta = mongoose.model('Meta', metaSchema);
const rating = mongoose.model('Rating', ratingSchema);
const recommended = mongoose.model('Recommended', recommendedSchema);
const characteristics = mongoose.model('Characteristics', characteristicsSchema);

module.exports = {product, review, meta, rating, recommended, characteristics};