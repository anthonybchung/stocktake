# Stocktake

## Project Vision

I want to build a web application that will help me reduce the repetitive process in stocktaking.

- Download StockTake data(MS Excel format) from POS system.
- Modify the table to make it visual appleasing to make stock take easier during tallying.
- Print out the MS Excel spread sheet.
- During stock count
  - Read item label.
  - Search for the item name on the form.
  - Tally the item.
- At the end of the stocktake, we add all the tally and search for any discrepancies.
- If there are any, then we need to retally the items that have discrepancies.

I would like to automate most of these steps.

- Download StockTake data
- Upload to the Web App
- Start scanning the product.
- After all the products are scanned, the web app will create a table and highlight any discrepancies.
- After all is finalised, I want to print the table on A4 paper.


## Model: Product

| Attribute         | Data type | Validation Rule |
| :----------       | :-------- | :-------------- |
| product_id        | string    | not null        |
| supplier_SKU      | string    | not null        |
| manufacturer_SKU  | string    | not null        |
| short_description | text      | not null        |
| product_type      | string    | not null        |

#### Minitest

To avoid duplications in mintest use create an object in setup function.

```
def setup
  @product = products(:one)
end
```
# We need to find out which attribute represents the barcode when scanning.

## Controller Product.

CRUD for Product.

The user can enter a new product one at a time, or a MS-excel file of products produced by the POS system.

