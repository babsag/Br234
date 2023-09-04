.class final Lcom/google/protobuf/ByteString$e;
.super Lcom/google/protobuf/ByteString$i;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$i;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/ByteString;->d(III)I

    .line 3
    iput p2, p0, Lcom/google/protobuf/ByteString$e;->e:I

    .line 4
    iput p3, p0, Lcom/google/protobuf/ByteString$e;->f:I

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$e;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/protobuf/ByteString;->c(II)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ByteString$i;->d:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$e;->e:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected copyToInternal([BIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$i;->d:[B

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$e;->o()I

    move-result v1

    add-int/2addr v1, p2

    .line 3
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method e(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$i;->d:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$e;->e:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString$e;->e:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString$e;->f:I

    return v0
.end method
