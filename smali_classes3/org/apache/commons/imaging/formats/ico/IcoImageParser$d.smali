.class abstract Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;
.super Ljava/lang/Object;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;->a:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;->a:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;->a(Ljava/io/PrintWriter;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;->b(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected abstract b(Ljava/io/PrintWriter;)V
.end method

.method public abstract c()Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation
.end method
