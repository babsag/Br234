.class public final Lcom/manateeworks/BarcodeScanner$MWLocation;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manateeworks/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MWLocation"
.end annotation


# instance fields
.field public p1:Landroid/graphics/PointF;

.field public p2:Landroid/graphics/PointF;

.field public p3:Landroid/graphics/PointF;

.field public p4:Landroid/graphics/PointF;

.field public points:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>([F)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    .line 2
    iput-object v1, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->points:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v0, :cond_0

    .line 3
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->p1:Landroid/graphics/PointF;

    .line 4
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->p2:Landroid/graphics/PointF;

    .line 5
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->p3:Landroid/graphics/PointF;

    .line 6
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->p4:Landroid/graphics/PointF;

    .line 7
    iget-object v4, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->p1:Landroid/graphics/PointF;

    aget v1, p1, v1

    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 8
    aget v1, p1, v3

    iput v1, v4, Landroid/graphics/PointF;->y:F

    .line 9
    iget-object v1, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->p2:Landroid/graphics/PointF;

    const/4 v3, 0x2

    aget v3, p1, v3

    iput v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x3

    .line 10
    aget v3, p1, v3

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 11
    iget-object v1, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->p3:Landroid/graphics/PointF;

    aget v0, p1, v0

    iput v0, v1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x5

    .line 12
    aget v0, p1, v0

    iput v0, v1, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x6

    .line 13
    aget v0, p1, v0

    iput v0, v2, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x7

    .line 14
    aget p1, p1, v0

    iput p1, v2, Landroid/graphics/PointF;->y:F

    return-void

    .line 15
    :cond_0
    iget-object v4, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->points:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    aput-object v5, v4, v2

    .line 16
    iget-object v4, p0, Lcom/manateeworks/BarcodeScanner$MWLocation;->points:[Landroid/graphics/PointF;

    aget-object v5, v4, v2

    mul-int/lit8 v6, v2, 0x2

    aget v7, p1, v6

    iput v7, v5, Landroid/graphics/PointF;->x:F

    .line 17
    aget-object v4, v4, v2

    add-int/2addr v6, v3

    aget v3, p1, v6

    iput v3, v4, Landroid/graphics/PointF;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
