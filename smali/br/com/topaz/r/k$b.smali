.class Lbr/com/topaz/r/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/r/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lbr/com/topaz/r/k;


# direct methods
.method constructor <init>(Lbr/com/topaz/r/k;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/k$b;->d:Lbr/com/topaz/r/k;

    iput-object p2, p0, Lbr/com/topaz/r/k$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lbr/com/topaz/r/k$b;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lbr/com/topaz/r/k$b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 4

    const-string v0, "i"

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/r/k$b;->a:Ljava/lang/String;

    const-string v2, "55"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lbr/com/topaz/r/k$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lbr/com/topaz/r/k$b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/r/k$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lbr/com/topaz/r/k$b;->c:Z

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    goto :goto_2

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lbr/com/topaz/r/k$b;->c:Z

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    goto :goto_3

    :cond_3
    check-cast p2, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lbr/com/topaz/r/k$b;->c:Z

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    goto :goto_4

    :cond_5
    check-cast p2, Ljava/lang/Boolean;

    check-cast p1, Ljava/lang/Boolean;

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p1

    return p1

    :cond_6
    iget-boolean v0, p0, Lbr/com/topaz/r/k$b;->c:Z

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    goto :goto_5

    :cond_7
    check-cast p2, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    :goto_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lbr/com/topaz/r/k$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result p1

    return p1
.end method
