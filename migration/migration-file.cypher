// User node definition
CREATE CONSTRAINT unique_email ON (u:User) ASSERT u.email IS UNIQUE;
CREATE CONSTRAINT unique_contractAddress ON (u:User) ASSERT u.contractAddress IS UNIQUE;

// Edges definition
// CREATE CONSTRAINT unique_strong_relationship ON ()-[r:STRONG_RELATIONSHIP]-();
// CREATE CONSTRAINT unique_weak_relationship ON ()-[r:WEAK_RELATIONSHIP]-() ASSERT r.id;