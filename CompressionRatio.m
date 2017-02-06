function [ BitRatio ] = CompressionRatio(inp1,inp2)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
fileinfo = dir(inp1); 
%display(fileinfo);
filesize1 = fileinfo.bytes;

fileinfo = dir(inp2); 
filesize2 = fileinfo.bytes;

BitRatio = filesize1/filesize2;
end

