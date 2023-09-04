.class public Lbr/com/topaz/l/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcp"
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mem"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trd"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbr/com/topaz/l/r;->a:J

    iput-wide p3, p0, Lbr/com/topaz/l/r;->b:J

    iput-wide p5, p0, Lbr/com/topaz/l/r;->c:J

    return-void
.end method
