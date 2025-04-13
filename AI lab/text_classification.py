import nltk
from nltk.classify import NaiveBayesClassifier

# Sample training data (sentence, label)
train_data = [
    ("I love this movie", "Positive"),
    ("This place is amazing", "Positive"),
    ("I really like this song", "Positive"),
    ("I hate this movie", "Negative"),
    ("This place is terrible", "Negative"),
    ("I dislike this song", "Negative")
]

# Feature extraction
def extract_features(text):
    """Convert text into a dictionary of words."""
    words = text.split()
    features = {word.lower(): True for word in words}
    return features

# Preparing the training set
training_set = [(extract_features(sentence), label) for (sentence, label) in train_data]

# Train the Naive Bayes Classifier
classifier = NaiveBayesClassifier.train(training_set)

# Classify new sentences
test_sentences = [
    "I love this place",
    "This movie is terrible",
    "I really dislike this place",
    "This song is amazing"
]

print("\nClassification Results:")
for test in test_sentences:
    features = extract_features(test)
    result = classifier.classify(features)
    print(f"Sentence: '{test}' ➔ Classified as: {result}")
