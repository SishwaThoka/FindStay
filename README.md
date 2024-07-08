# **Property Rental Application**
**Overview:**
The Property Rental Application is a comprehensive web application designed to facilitate property rentals. It allows tenants to view available properties, send booking requests to landlords, and perform CRUD operations on their bookings. Tenants can also search for properties based on location.. Landlords can manage their property listings and booking requests, while administrators have the tools to manage both tenants and landlords. The application is built using Spring Boot and Hibernate, ensuring robust performance and scalability.

# **Features:**
**Tenants:**
Browse available properties with detailed descriptions and images.
Request to book properties with a simple and intuitive interface.
Create, read, update, and delete their booking requests.
Search for properties based on specific locations.

**Landlords:**
Easily add new properties with all relevant details.
Update property information as needed.
Remove properties from the listing.
Accept or reject booking requests from tenants.

**Administrators:**
Oversee and manage both tenant and landlord accounts.
Access detailed reports and analytics on user activities.

**General:**
Efficient client-server communication to enhance scalability and maintainability.
Utilize Hibernate for managing property data, user information, and booking transactions.
Implement input validation, error handling, and user session management for improved security and user experience.

**Technologies Used**
Backend: Spring Boot, Hibernate
Frontend: HTML, CSS, JavaScript
Database: MySQL
API: RESTful APIs
Security: Interceptor, BCrypt
Tools: Git, IntelliJ

**Security:**
Implemented using Interceptor to check the role based access.
Utilized BCrypt to securely hash and store passwords.
Ensured secure and efficient session handling.
**Error Handling:**
Comprehensive error handling mechanisms are in place to capture and manage errors gracefully.
Custom error messages and codes are provided for better user experience and debugging.
