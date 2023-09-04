.class Lorg/apache/commons/imaging/formats/ico/IcoImageParser$b;
.super Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final b:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;

.field public final c:Ljava/awt/image/BufferedImage;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;)V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$b;->b:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;

    .line 3
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$b;->c:Ljava/awt/image/BufferedImage;

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "BitmapIconData"

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$b;->b:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;->a(Ljava/io/PrintWriter;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public c()Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$b;->c:Ljava/awt/image/BufferedImage;

    return-object v0
.end method
