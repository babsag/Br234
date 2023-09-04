.class final Lorg/apache/commons/imaging/common/RationalNumber$a;
.super Ljava/lang/Object;
.source "RationalNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/RationalNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final b:D


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/common/RationalNumber;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/common/RationalNumber$a;->a:Lorg/apache/commons/imaging/common/RationalNumber;

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    return-void
.end method

.method public static a(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$a;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/RationalNumber$a;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v1

    sub-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/imaging/common/RationalNumber$a;-><init>(Lorg/apache/commons/imaging/common/RationalNumber;D)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/RationalNumber$a;->a:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/RationalNumber;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
