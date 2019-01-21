"""
simple_board.py

Implements a basic Go board with functions to:
- initialize to a given board size
- check if a move is legal
- play a move

The board uses a 1-dimensional representation with padding
"""

import numpy as np
from board_util import GoBoardUtil, BLACK, WHITE, EMPTY, BORDER, \
                       PASS, is_black_white, coord_to_point, where1d, MAXSIZE

class SimpleGoBoard(object):

    def get_color(self, point):
        return self.board[point]

    def pt(self, row, col):
        return coord_to_point(row, col, self.size)

    def is_legal(self, point, color):
        """
        Check whether it is legal for color to play on point
        """
        board_copy = self.copy()
        # Try to play the move on a temporary copy of board
        # This prevents the board from being messed up by the move
        legal = board_copy.play_move(point, color)
        return legal

    def get_empty_points(self):
        """
        Return:
            The empty points on the board
        """
        return where1d(self.board == EMPTY)

    def __init__(self, size):
        """
        Creates a Go board of given size
        """
        assert 2 <= size <= MAXSIZE
        self.reset(size)

    def reset(self, size):
        """
        Creates a start state, an empty board with the given size
        The board is stored as a one-dimensional array
        See GoBoardUtil.coord_to_point for explanations of the array encoding
        """
        self.size = size
        self.NS = size + 1
        self.WE = 1
        self.ko_recapture = None
        self.current_player = BLACK
        self.maxpoint = size * size + 3 * (size + 1)
        self.board = np.full(self.maxpoint, BORDER, dtype = np.int32)
        self._initialize_empty_points(self.board) 
        self.winner = None

    def copy(self):
        b = SimpleGoBoard(self.size)
        assert b.NS == self.NS
        assert b.WE == self.WE
        b.ko_recapture = self.ko_recapture
        b.current_player = self.current_player
        assert b.maxpoint == self.maxpoint
        b.board = np.copy(self.board)
        b.winner = self.winner
        return b

    def row_start(self, row):
        assert row >= 1
        assert row <= self.size
        return row * self.NS + 1
        
    def _initialize_empty_points(self, board):
        """
        Fills points on the board with EMPTY
        Argument
        ---------
        board: numpy array, filled with BORDER
        """
        for row in range(1, self.size + 1):
            start = self.row_start(row)
            board[start : start + self.size] = EMPTY

    def point_in_board(self, point):
        return point > 0 and point < len(self.board)

    def check_win(self, point, color):
        score = 0
        loc = point

        # horizontal check
        while(self.point_in_board(loc) and self.board[loc] == color):
            score += 1
            loc += 1
        loc = point-1
        while(self.point_in_board(loc) and self.board[loc] == color):
            score += 1
            loc -= 1
        
        if score >= 5:
            self.winner = color
            return

        # reset score, location
        score = 0
        loc = point
        # vertical check
        while(self.point_in_board(loc) and self.board[loc] == color):
            score += 1
            loc += (self.size+1)
        loc = point-(self.size+1)
        while(self.point_in_board(loc) and self.board[loc] == color):
            score += 1
            loc -= (self.size+1)

        if score >= 5:
            self.winner = color
            return

        # reset score, location
        score = 0
        loc = point
        # diagonal (left to right) check
        while(self.point_in_board(loc) and self.board[loc] == color):
            score += 1
            loc += (self.size+2)
        loc = point-(self.size+2)
        while(self.point_in_board(loc) and self.board[loc] == color):
            score += 1
            loc -= (self.size+2)

        if score >= 5:
            self.winner = color
            return

        # reset score, location
        score = 0
        loc = point
        # diagonal (right to left) check
        while(self.point_in_board(loc) and self.board[loc] == color):
            score += 1
            loc += (self.size)
        loc = point-(self.size)
        while(self.point_in_board(loc) and self.board[loc] == color):
            score += 1
            loc -= (self.size)

        if score >= 5:
            self.winner = color
            return

        
        

    def play_move(self, point, color):
        """
        Play a move of color on point
        Returns boolean: whether move was legal
        """
        #assert is_black_white(color)
        if (not is_black_white(color)):
            return False
        if point == PASS:
            return
        if self.board[point] != EMPTY:
            return False
        self.board[point] = color
        self.check_win(point, color)
        self.current_player = GoBoardUtil.opponent(color)
        return True

    def illegal_reason(self, point, color):
        if (self.board[point] != EMPTY):
            return "occupied"
