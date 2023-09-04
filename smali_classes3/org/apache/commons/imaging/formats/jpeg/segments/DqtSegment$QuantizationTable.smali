.class public Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;
.super Ljava/lang/Object;
.source "DqtSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuantizationTable"
.end annotation


# instance fields
.field private final a:[I

.field public final destinationIdentifier:I

.field public final precision:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->precision:I

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    .line 4
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->a:[I

    return-void
.end method


# virtual methods
.method public getElements()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->a:[I

    return-object v0
.end method
