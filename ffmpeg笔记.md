#视频拆帧
    ffmpeg -i video.avi frame_%04d.jpg

#视频提取音频文件
    ffmpeg -i v01.mp4 -vn -acodec copy output.aac

#视频帧+音频组装:
    ffmpeg -i frame_%04d.jpg -i v01.aac -vcodec libx264 -acodec copy -b:v 5626k output.mp4

#视频+音频组装
    ffmpeg -i test.mp4 -i v01.aac -vcodec copy -acodec copy output.mp4
