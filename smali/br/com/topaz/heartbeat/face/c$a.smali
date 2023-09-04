.class public Lbr/com/topaz/heartbeat/face/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/face/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:[B

.field private b:[B

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/heartbeat/face/c$a;->c:J

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/c$a;->a:[B

    return-void
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/c$a;->a:[B

    return-object v0
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/c$a;->b:[B

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/c$a;->b:[B

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/heartbeat/face/c$a;->c:J

    return-wide v0
.end method
