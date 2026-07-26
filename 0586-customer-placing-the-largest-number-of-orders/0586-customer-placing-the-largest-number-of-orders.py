import pandas as pd

def largest_orders(orders: pd.DataFrame) -> pd.DataFrame:
 return pd.DataFrame({
        "customer_number": [
            orders.groupby("customer_number")["order_number"]
            .count()
            .idxmax()
        ]
    })