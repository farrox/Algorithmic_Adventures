import os
import re

def add_end_fullwidth_after_end_lstlisting():
    # Regular expression to find \end{lstlisting}
    end_lstlisting_pattern = re.compile(r'\\end\{lstlisting\}')

    # Get the current directory
    current_directory = os.getcwd()

    # Iterate over all files in the current directory
    for filename in os.listdir(current_directory):
        if filename.endswith('.tex'):
            filepath = os.path.join(current_directory, filename)
            print(f"Processing file: {filename}")
            with open(filepath, 'r', encoding='utf-8') as file:
                content = file.read()

            # Add a blank line and \end{fullwidth} after \end{lstlisting}
            modified_content = end_lstlisting_pattern.sub(r'\\end{lstlisting}\n\n\\end{fullwidth}', content)

            # Write the modified content back to the file
            with open(filepath, 'w', encoding='utf-8') as file:
                file.write(modified_content)
            print(f"Modified content in: {filename}")

if __name__ == "__main__":
    add_end_fullwidth_after_end_lstlisting()
