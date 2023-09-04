.class public Lbr/com/topaz/l/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field

.field private c:Lbr/com/topaz/l/e;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLbr/com/topaz/l/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/l/f;->a:Ljava/lang/String;

    iput-wide p2, p0, Lbr/com/topaz/l/f;->b:J

    iput-object p4, p0, Lbr/com/topaz/l/f;->c:Lbr/com/topaz/l/e;

    return-void
.end method
