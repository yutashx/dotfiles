from argparse import ArgumentParser


def get_parser():
    argparser = ArgumentParser(description="some description")
    argparser.add_argument("path", help="input path")

    return argparser


if __name__ == "__main__":
    parser = get_parser()
    args = parser.parse_args()

    if sum(o is not False for o in vars(args).values()) <= 1:
        parser.print_help()
        exit()
