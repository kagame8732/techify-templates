import chai from "chai";
import chaiHttp from 'chai-http';
import app from '../app';

chai.should();
chai.use(chaiHttp);

describe('GET/', () => {
    it('Should Welcome a user to an api', done => {
        chai.request(app)
            .get('/')
            .end((err, res) => {
                res.should.have.status(200);
                res.body.should.have.a('object');
                res.body.should.have.property('message').eql('Welcome to Fasta API');
                done();
            })
    })

    it('Should Should return 404 on Not found endpoints', done => {
        chai.request(app)
            .get('/not-found-endpoint')
            .end((err, res) => {
                res.should.have.status(404);
                res.body.should.have.a('object');
                res.body.should.have.property('message')
                done();
            })
    })

    it('Cors Tests', done => {
        chai.request(app)
            .options('/')
            .end((err, res) => {
                res.should.have.header('Access-Control-Allow-Origin', '*')
                res.should.have.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
                res.should.have.header('Access-Control-Allow-Methods', 'PUT, POST, PATCH, DELETE, GET');
                res.should.have.status(200);
                res.body.should.have.a('object');
                done();
            })
    })


})


describe('GET /api/hello', () => {
    it('Should return a hello world response', done => {
        chai.request(app)
            .get('/api/hello')
            .end((err, res) => {
                res.should.have.status(200);
                res.body.should.have.a('object');
                res.body.should.have.property('message').eql('Hello my API')
                done();
            })

    })
})