import nltk

# commented the download lines to avoid unnecessary downloads as they are already downloaded in the environment
# nltk.download('punkt')
# nltk.download('punkt_tab')
# nltk.download('averaged_perceptron_tagger')
# nltk.download('averaged_perceptron_tagger_eng')

# Define a dictionary to explain common POS tags
pos_tag_explanations = {
    'NN': 'Noun, singular',
    'NNS': 'Noun, plural',
    'NNP': 'Proper noun, singular',
    'NNPS': 'Proper noun, plural',
    'VB': 'Verb, base form',
    'VBD': 'Verb, past tense',
    'VBG': 'Verb, gerund/present participle',
    'VBN': 'Verb, past participle',
    'VBP': 'Verb, non-3rd person singular present',
    'VBZ': 'Verb, 3rd person singular present',
    'JJ': 'Adjective',
    'JJR': 'Adjective, comparative',
    'JJS': 'Adjective, superlative',
    'RB': 'Adverb',
    'DT': 'Determiner',
    'IN': 'Preposition or subordinating conjunction',
    'PRP': 'Personal pronoun',
    'PRP$': 'Possessive pronoun',
    'CC': 'Coordinating conjunction',
    '.': 'Punctuation',
    ',': 'Comma'
}

sentence = "Natural Language Processing is fascinating."

# Tokenize the sentence into words
words = nltk.word_tokenize(sentence)

# Apply part-of-speech tagging
pos_tags = nltk.pos_tag(words)

# Print results with explanations
print("Part-of-Speech Tagging Results:")
print("-" * 60)
print(f"{'Word':<15} {'Tag':<8} {'Meaning'}")
print("-" * 60)

for word, tag in pos_tags:
    # "Other part of speech" is a placeholder for any tags not in the dictionary we defined above
    explanation = pos_tag_explanations.get(tag, "Other part of speech")
    print(f"{word:<15} {tag:<8} {explanation}")