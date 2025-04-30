**Entity-Relationship Diagram (ERD) for E-Commerce Platform**

To support the detailed functionality of a robust e-commerce system, the following tables have been designed and connected via appropriate relationships. Each table plays a role in product listing, inventory management, order processing, and attribute handling.

---

### 🧾 Tables and Descriptions

1. **brand**
   - `brand_id` (PK)
   - `name`
   - `description`

2. **product_category**
   - `category_id` (PK)
   - `name`
   - `description`

3. **product**
   - `product_id` (PK)
   - `name`
   - `brand_id` (FK to brand)
   - `category_id` (FK to product_category)
   - `base_price`
   - `description`

4. **product_image**
   - `image_id` (PK)
   - `product_id` (FK to product)
   - `image_url`
   - `alt_text`

5. **color**
   - `color_id` (PK)
   - `color_name`
   - `hex_value`

6. **size_category**
   - `size_category_id` (PK)
   - `category_name`

7. **size_option**
   - `size_option_id` (PK)
   - `size_category_id` (FK to size_category)
   - `label`
   - `value`

8. **product_item** (represents specific SKU)
   - `item_id` (PK)
   - `product_id` (FK to product)
   - `color_id` (FK to color)
   - `size_option_id` (FK to size_option)
   - `stock_quantity`
   - `price`

9. **product_variation**
   - `variation_id` (PK)
   - `product_id` (FK to product)
   - `color_id` (FK to color)
   - `size_option_id` (FK to size_option)

10. **attribute_type**
    - `type_id` (PK)
    - `type_name` (e.g., text, number, boolean)

11. **attribute_category**
    - `category_id` (PK)
    - `name`

12. **product_attribute**
    - `attribute_id` (PK)
    - `product_id` (FK to product)
    - `attribute_category_id` (FK to attribute_category)
    - `attribute_type_id` (FK to attribute_type)
    - `attribute_name`
    - `attribute_value`

---

### 🔁 Relationships Overview
- A product can belong to one brand and one category.
- Each product can have multiple images.
- A product may have multiple product items (SKUs) differing by size and/or color.
- Each product_item refers to one color and one size_option.
- product_variation links specific color and size combinations for a product.
- Attributes are linked to products via product_attribute, and categorized by type and category.

