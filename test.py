message_file = "coding_qual_input.txt"

def decode(message_file):
    with open(message_file, "r") as file:
        lines = file.readlines()
    sorted_lines = sorted(lines, key=lambda line: int(line.split()[0]))

    numbers = []
    for i, line in enumerate(sorted_lines):
        number, word = line.split()
        numbers.append(int(number))

    pyramid_end_numbers = [1]
    for i in range(2, len(numbers) + 1):
        pyramid_end_numbers.append(pyramid_end_numbers[-1] + i)

    message = []
    for i, line in enumerate(sorted_lines):
        number, word = line.split()
        if int(number) in pyramid_end_numbers:
            message.append(word)

    return " ".join(message)

print(decode(message_file))
