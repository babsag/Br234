.class public Lbr/com/topaz/l/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lcu"
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lcua"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "av"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbr/com/topaz/l/h0;->a:J

    iput-wide p3, p0, Lbr/com/topaz/l/h0;->b:J

    iput-object p5, p0, Lbr/com/topaz/l/h0;->c:Ljava/lang/String;

    return-void
.end method
