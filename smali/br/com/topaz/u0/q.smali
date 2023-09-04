.class public Lbr/com/topaz/u0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([C[C)I
    .locals 11

    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    add-int/2addr v4, v1

    if-ge v3, v4, :cond_0

    aput v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_1
    array-length v4, p1

    add-int/2addr v4, v1

    if-ge v3, v4, :cond_3

    array-length v4, p2

    add-int/2addr v4, v1

    new-array v4, v4, [I

    aput v3, v4, v2

    const/4 v5, 0x1

    :goto_2
    array-length v6, p2

    add-int/2addr v6, v1

    if-ge v5, v6, :cond_2

    aget v6, v0, v5

    add-int/2addr v6, v1

    add-int/lit8 v7, v5, -0x1

    aget v8, v4, v7

    add-int/2addr v8, v1

    aget v9, v0, v7

    add-int/lit8 v10, v3, -0x1

    aget-char v10, p1, v10

    aget-char v7, p2, v7

    if-eq v10, v7, :cond_1

    add-int/lit8 v9, v9, 0x1

    :cond_1
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    goto :goto_1

    :cond_3
    array-length p1, p2

    aget p1, v0, p1

    return p1
.end method
