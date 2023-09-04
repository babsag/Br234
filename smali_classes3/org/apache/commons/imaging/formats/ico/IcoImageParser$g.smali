.class Lorg/apache/commons/imaging/formats/ico/IcoImageParser$g;
.super Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field public final b:Ljava/awt/image/BufferedImage;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;)V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$g;->b:Ljava/awt/image/BufferedImage;

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "PNGIconData"

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public c()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$g;->b:Ljava/awt/image/BufferedImage;

    return-object v0
.end method
