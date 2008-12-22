
data BookInfo = Book Integer String [String]
				deriving (Show)
				
myInfo = Book 111222333444 "Meow: A Really Neat Book" ["Clea Clark", "Huxley Clark"]

type CustomerId = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerId ReviewBody

type BookRecord = (BookInfo, BookReview)

-- using pattern matching for deconstruction					
bookId (Book id _ _) = id
bookTitle (Book _ title _) = title
bookAuthors (Book _ _ authors) = authors

-- or better yet...
-- eliminate boilerplate with the record syntax
data Address = Address {
	street :: String,
	city :: String,
	state:: String,
	zipcode :: String
} deriving (Show)

data Customer = Customer {
	customerId :: CustomerId,
	customerName :: String,
	customerAddress :: Address
} deriving (Show)