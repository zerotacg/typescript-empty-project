import {expect} from 'chai';
import {foo} from '../../src/dummy';

describe('dummy', function () {
    it('should fail', function () {
        expect(true).to.be.false;
    });
    describe('#foo()', function () {
        it('should exist', function () {
            expect(foo()).to.be.true;
        });
    })
});
