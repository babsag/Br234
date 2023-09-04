.class public Lsun/security/util/Cache$EqualByteArray;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EqualByteArray"
.end annotation


# instance fields
.field private final a:[B

.field private volatile b:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/security/util/Cache$EqualByteArray;->a:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lsun/security/util/Cache$EqualByteArray;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lsun/security/util/Cache$EqualByteArray;

    .line 3
    iget-object v0, p0, Lsun/security/util/Cache$EqualByteArray;->a:[B

    iget-object p1, p1, Lsun/security/util/Cache$EqualByteArray;->a:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lsun/security/util/Cache$EqualByteArray;->b:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lsun/security/util/Cache$EqualByteArray;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->a:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lsun/security/util/Cache$EqualByteArray;->b:I

    :cond_1
    return v0
.end method
