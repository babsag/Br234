.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/a;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field final a:[I

.field final b:I

.field final c:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int v0, p1, p2

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    .line 3
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->b:I

    .line 4
    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->c:I

    return-void
.end method
