.class Lorg/apache/commons/imaging/formats/gif/d;
.super Ljava/lang/Object;
.source "GifImageContents.java"


# instance fields
.field final a:Lorg/apache/commons/imaging/formats/gif/c;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/b;",
            ">;"
        }
    .end annotation
.end field

.field final c:[B


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/gif/c;[BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/gif/c;",
            "[B",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/gif/d;->c:[B

    .line 4
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    return-void
.end method
