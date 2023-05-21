"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing


class Parser:
    """Encapsulates access to the input code. Reads an assembly language 
    command, parses it, and provides convenient access to the commands 
    components (fields and symbols). In addition, removes all white space and 
    comments.
    """

    def __init__(self, input_file: typing.TextIO) -> None:
        """Opens the input file and gets ready to parse it.

        Args:
            input_file (typing.TextIO): input file.
        """
        self._input_lines = input_file.read().splitlines()
        self._line_index = 0
        self._num_of_lines = len(self._input_lines)

    def has_more_commands(self) -> bool:
        """Are there more commands in the input?

        Returns:
            bool: True if there are more commands, False otherwise.
        """
        next_line_index = self._line_index + 1
        if self._num_of_lines <= next_line_index:
            return False
        else:
            return True

    def advance(self) -> None:
        """Reads the next command from the input and makes it the current command.
        Should be called only if has_more_commands() is true.
        """
        self._line_index += 1
        while self.has_more_commands() and \
                (self._input_lines[self._line_index].isspace() or
                 self._input_lines[self._line_index][:2] == "//" or
                 not self._input_lines[self._line_index]):
            self._line_index += 1

    def command_type(self) -> str:
        """
        Returns:
            str: the type of the current command:
            "A_COMMAND" for @Xxx where Xxx is either a symbol or a decimal number
            "C_COMMAND" for dest=comp;jump
            "L_COMMAND" (actually, pseudo-command) for (Xxx) where Xxx is a symbol
        """
        if self._input_lines[self._line_index][0] == "@":
            return "A_COMMAND"
        elif self._input_lines[self._line_index][0] == "(":
            return "L_COMMAND"
        else:
            return "C_COMMAND"

    def symbol(self) -> str:
        """
        Returns:
            str: the symbol or decimal Xxx of the current command @Xxx or
            (Xxx). Should be called only when command_type() is "A_COMMAND" or 
            "L_COMMAND".
        """
        if self.command_type() == "A_COMMAND":
            return self._input_lines[self._line_index][1:]
        else:
            return self._input_lines[self._line_index][1:-1]

    def dest(self) -> str:
        """
        Returns:
            str: the dest mnemonic in the current C-command. Should be called 
            only when commandType() is "C_COMMAND".
        """
        if self._input_lines[self._line_index].count("="):
            split_by = self._input_lines[self._line_index].split("=")
            dest_in = split_by[0]
            return dest_in.strip()
        else:
            return "null"

    def comp(self) -> str:
        """
        Returns:
            str: the comp mnemonic in the current C-command. Should be called 
            only when commandType() is "C_COMMAND".
        """
        dest_comp = self._input_lines[self._line_index].split(";")[0]
        if dest_comp.count("="):
            dest_comp = dest_comp.split("=")[1]
        return dest_comp.strip()

    def jump(self) -> str:
        """
        Returns:
            str: the jump mnemonic in the current C-command. Should be called 
            only when commandType() is "C_COMMAND".
        """
        if self._input_lines[self._line_index].count(";"):
            split_by = self._input_lines[self._line_index].split(";")
            jump_in = split_by[1]
            return jump_in.strip()
        else:
            return "null"

