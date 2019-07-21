import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-o", "--output", help="output file")
parser.add_argument("-s", "--string", help="debug string")
args=parser.parse_args()

print("""const char* getString()
{
    return "my generated string: """ + args.string + """";
}""", file=open(args.output+".cpp", "w"))

print("const char* getString();", file=open(args.output+".h", "w"))

