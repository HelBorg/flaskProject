import datetime as dt

from marshmallow import Schema, fields


class Transaction:
    def __init__(self, description, amount, trans_type):
        self.description = description
        self.amount = amount
        self.created_at = dt.datetime.now()
        self.trans_type = trans_type

    def __repr__(self):
        return '<Transaction(name={self.description!r})>'.format(self=self)


class TransactionSchema(Schema):
    description = fields.Str()
    amount = fields.Number()
    created_at = fields.Date()
    trans_type = fields.Str()
