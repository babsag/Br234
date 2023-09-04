.class Lorg/apache/commons/imaging/palette/c;
.super Ljava/lang/Object;
.source "ColorCount.java"


# instance fields
.field public final a:I

.field public b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/palette/c;->a:I

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/palette/c;->c:I

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 4
    iput v0, p0, Lorg/apache/commons/imaging/palette/c;->d:I

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 5
    iput v0, p0, Lorg/apache/commons/imaging/palette/c;->e:I

    shr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    .line 6
    iput p1, p0, Lorg/apache/commons/imaging/palette/c;->f:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/apache/commons/imaging/palette/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/commons/imaging/palette/c;

    .line 3
    iget p1, p1, Lorg/apache/commons/imaging/palette/c;->a:I

    iget v0, p0, Lorg/apache/commons/imaging/palette/c;->a:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/palette/c;->a:I

    return v0
.end method
