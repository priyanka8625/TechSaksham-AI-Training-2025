PLACEHOLDER = "[name]"

with open("names.txt", 'r') as frnd_list:
    names = frnd_list.readlines()

with open("sample_mail.docx", 'r') as letter:
    letter_contents = letter.read()
    for name in names:
        name = name.strip()
        new_letter = letter_contents.replace(PLACEHOLDER, name)
        
        with open(f"letter_for_{name}.docx", 'w+') as completed_letter:
            completed_letter.write(new_letter)

