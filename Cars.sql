



select * from Leases
where expirationdate > getdate()


select email from customers
where FavoredCustomer = 1

select make, model, color, AvailableForLease, MilesDriven from cars join model on cars.modelID = model.modelID

select email 
from Leases 
join Contracts on contracts.LeaseID = leases.LeaseID
join Customers on customers.CustomerID = contracts.CustomerID
where ExpirationDate <= getdate()

select make, model
from Leases
join Cars on cars.CarID = leases.CarID 
join Model on model.ModelID = cars.ModelID
where AvailableForLease = 0