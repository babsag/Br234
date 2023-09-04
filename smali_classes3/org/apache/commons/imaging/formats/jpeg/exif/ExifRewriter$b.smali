.class abstract Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$b;
.super Ljava/lang/Object;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
