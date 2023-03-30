#pragma once

char **tokenize(char *str);
void free_token(char **tok);
void show_token(char **tok);
int command(char *str);
int command(char **tok);
