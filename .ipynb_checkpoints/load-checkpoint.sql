create table reviews (
	review_id text primary key, 
	order_id text, 
	review_score int, 
	seller_id text, 
	price money
);

create table deals(
	seller_id text primary key, 
	business_segment text
);

select * from deals;
select * from reviews;

select d.*, r.review_score
from reviews r
join deals d
	on d.seller_id = r.seller_id;