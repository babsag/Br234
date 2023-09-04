.class Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;
.super Ljava/lang/Object;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public final a:[B

.field private b:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

.field private c:Z

.field final synthetic d:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->d:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->b:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->c:Z

    .line 4
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->d:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-static {v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->a(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->b:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    return-object v0
.end method
