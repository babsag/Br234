.class public Lbr/com/topaz/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/g/e;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbr/com/topaz/g/e;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/g/e;->b:J

    return-wide v0
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/g/e;
    .locals 0

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/g/e;->a:Z

    return v0
.end method
