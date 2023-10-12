import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "bff",
    id: "bff-3b2b15db-f542-44fc-afdb-eb0413c913b3"
}
service / on new http:Listener(9090) {

    resource function get card\-details/[string userId]() returns error?|CardDetails {
        CardDetails cardDetails = {
            userId: userId,
            cardNumber: 1234567890123456,
            rewardPoints: 3760,
            currentBalance: 1250.39,
            dueAmount: 1000,
            lastStatementBalance: 1692.88,
            availableCredit: 14500
        };
        return cardDetails;
    }

    resource function get rewards() returns RewardDetails[] {
        return [
            {
                "name": "Target",
                "logoUrl": "https://drive.google.com/file/d/1FEOGLEG99HsttPBXliXUi8aWYqnNmPH2/view?usp=drive_link",
                "value": 25,
                "totalPoints": 500,
                "description": "A Target GiftCard is your opportunity to shop for thousands of items at more than 1,900 Target stores in the U.S., as well as Target.com. From home décor, small appliances and electronics to fashion, accessories and music, find exactly what you’re looking for at Target. No fees. No expiration. No kidding.™"
            },
            {
                "name": "Starbucks Coffee",
                "logoUrl": "https://drive.google.com/file/d/1nku2n63zXBfrA3Bf0eAVWqu45mFLnaRE/view?usp=drive_link",
                "value": 15,
                "totalPoints": 200,
                "description": "Enjoy a PM pick-me-up with a lunch sandwich, protein box or a bag of coffee—including Starbucks VIA Instant"
            },
            {
                "name": "Jumba Juice",
                "logoUrl": "https://drive.google.com/file/d/1khJX-N7N8xHrV5o9GvqsH7wApDoY8ej0/view?usp=drive_link",
                "value": 6,
                "totalPoints": 600,
                "description": "Let Jamba come to you – wherever you are. Get our Whirld Famous smoothies, juices, and bowls delivered in just a few clicks. My Jamba rewards members can also apply rewards & earn points on delivery orders when you order on jamba.com or the jamba app!"
            },
            {
                "name": "Grubhub",
                "logoUrl": "https://drive.google.com/file/d/14S6olzLfOQJatEr4FkXyB_m1l31H2XyJ/view?usp=drive_link",
                "value": 10,
                "totalPoints": 500,
                "description": "Grubhub offers quick, easy food delivery, either online or through a mobile app. Customers can select from any local participating restaurant. They can add whatever they like to their order and have it delivered right to their home or office by one of Grubhub's delivery drivers. You can save even more by using a Grubhub promo code on your order"
            }
        ];
    }

    resource function get generate\-qr(string text) returns string {
        return "not implemented yet";
    }

}

type CardDetails record {
    string userId;
    int cardNumber;
    int rewardPoints;
    float currentBalance;
    float dueAmount;
    float lastStatementBalance;
    float availableCredit;
};

type RewardDetails record {
    string name;
    string logoUrl;
    int value;
    int totalPoints;
    string description;
};
