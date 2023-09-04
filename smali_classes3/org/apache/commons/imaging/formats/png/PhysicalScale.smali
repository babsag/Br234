.class public Lorg/apache/commons/imaging/formats/png/PhysicalScale;
.super Ljava/lang/Object;
.source "PhysicalScale.java"


# static fields
.field public static final UNDEFINED:Lorg/apache/commons/imaging/formats/png/PhysicalScale;


# instance fields
.field private final a:I

.field private final b:D

.field private final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1
    invoke-static {v0, v1, v0, v1}, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->createFromMeters(DD)Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->UNDEFINED:Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    return-void
.end method

.method private constructor <init>(IDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->a:I

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->b:D

    .line 4
    iput-wide p4, p0, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->c:D

    return-void
.end method

.method public static createFromMeters(DD)Lorg/apache/commons/imaging/formats/png/PhysicalScale;
    .locals 7

    .line 1
    new-instance v6, Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    const/4 v1, 0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/png/PhysicalScale;-><init>(IDD)V

    return-object v6
.end method

.method public static createFromRadians(DD)Lorg/apache/commons/imaging/formats/png/PhysicalScale;
    .locals 7

    .line 1
    new-instance v6, Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    const/4 v1, 0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/png/PhysicalScale;-><init>(IDD)V

    return-object v6
.end method


# virtual methods
.method public getHorizontalUnitsPerPixel()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->b:D

    return-wide v0
.end method

.method public getVerticalUnitsPerPixel()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->c:D

    return-wide v0
.end method

.method public isInMeters()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->a:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInRadians()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->a:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
