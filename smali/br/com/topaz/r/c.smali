.class public Lbr/com/topaz/r/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/r/c$a;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbr/com/topaz/r/c$a;
    .locals 2

    :try_start_0
    new-instance v0, Lbr/com/topaz/r/c$a;

    invoke-direct {v0}, Lbr/com/topaz/r/c$a;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/r/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lbr/com/topaz/r/c$a;->a(Lorg/json/JSONObject;)Lbr/com/topaz/r/c$a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;)Lbr/com/topaz/r/c;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/c;->a:Lorg/json/JSONObject;

    return-object p0
.end method
