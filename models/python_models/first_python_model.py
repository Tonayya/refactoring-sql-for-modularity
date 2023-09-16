# simple function
def printHello():
    print('Hello, world! ughhhh')

# call function
printHello

def model(dbt, session):
    my_sql_model_df = dbt.ref("customer_orders")
    final_df = ...  # stuff you can't write in SQL!
    return final_df