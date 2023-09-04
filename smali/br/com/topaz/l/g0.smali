.class public Lbr/com/topaz/l/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/l/e0;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private c:Lbr/com/topaz/w0/b;

.field private d:Lbr/com/topaz/u0/h;

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbr/com/topaz/l/g0;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p3, p0, Lbr/com/topaz/l/g0;->c:Lbr/com/topaz/w0/b;

    iput-object p4, p0, Lbr/com/topaz/l/g0;->d:Lbr/com/topaz/u0/h;

    const-string p2, "ofd_hb"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/l/g0;->a:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method private a(Ljava/lang/String;J)J
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "169"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-wide p2
.end method

.method private a([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbr/com/topaz/l/g0;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-direct {p0}, Lbr/com/topaz/l/g0;->x()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->c([BLjava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l/g0;->d:Lbr/com/topaz/u0/h;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/u0/h;->b([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/l/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lbr/com/topaz/l/g0;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lbr/com/topaz/l/g0;->i(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/l/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lbr/com/topaz/l/g0;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private i(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/l/g0;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-direct {p0}, Lbr/com/topaz/l/g0;->x()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private j(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private x()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/l/g0;->c:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/l/g0;->c:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lbr/com/topaz/b0/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "ofd_pi_c_c"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lbr/com/topaz/b0/d;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/b0/d;

    invoke-virtual {v0}, Lbr/com/topaz/b0/d;->b()Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "189"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public a(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ofd_frd_ltct"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lbr/com/topaz/e/a;)V
    .locals 2

    :try_start_0
    const-string v0, "ofd_hb_cached_biometric_key_timestamps"

    invoke-virtual {p1}, Lbr/com/topaz/e/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "170"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lbr/com/topaz/l/v;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbr/com/topaz/l/v;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_manual_update_timestamp"

    invoke-direct {p0, v2, v0}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbr/com/topaz/l/v;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_manual_scanapps_timestamp"

    invoke-direct {p0, v2, v0}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbr/com/topaz/l/v;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_manual_clientevent_timestamp"

    invoke-direct {p0, v2, v0}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbr/com/topaz/l/v;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "last_manual_event_timestamp"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lbr/com/topaz/l/x;)V
    .locals 7

    invoke-virtual {p0}, Lbr/com/topaz/l/g0;->y()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/l/y;

    invoke-direct {v1}, Lbr/com/topaz/l/y;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lbr/com/topaz/l/x;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lbr/com/topaz/l/x;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Lbr/com/topaz/l/g0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/y;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbr/com/topaz/l/x;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbr/com/topaz/l/y;->a(J)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v1, 0x32

    if-le p1, v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/l/y;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "key"

    invoke-virtual {v2}, Lbr/com/topaz/l/y;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    invoke-virtual {v2}, Lbr/com/topaz/l/y;->b()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v0, "n_list"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ofd_hb_cached_notification_list"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "165"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lbr/com/topaz/b0/a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lbr/com/topaz/b0/d;

    invoke-direct {v1}, Lbr/com/topaz/b0/d;-><init>()V

    invoke-virtual {v1, p1}, Lbr/com/topaz/b0/d;->b(Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ofd_pi_c_c"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "188"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "cron_ids"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ofd_hb_cron_ids_cache"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "167"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b()J
    .locals 3

    const-string v0, "ofd_l_pi_c_e_t"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbr/com/topaz/l/g0;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lbr/com/topaz/l/x;)Lbr/com/topaz/l/y;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lbr/com/topaz/l/x;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lbr/com/topaz/l/x;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lbr/com/topaz/l/g0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lbr/com/topaz/l/g0;->y()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/l/y;

    invoke-virtual {v1}, Lbr/com/topaz/l/y;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lbr/com/topaz/l/g0;->i(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lbr/com/topaz/l/g0;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lbr/com/topaz/l/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lbr/com/topaz/l/g0;->k(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-direct {p0, v0}, Lbr/com/topaz/l/g0;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbr/com/topaz/l/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/l/g0;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public b(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ofd_frd_mtct"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ofd_hb_event_timestamp"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const-string v0, "ofd_last_application_version_info"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "token_time_diff"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ofd_hb_client_id"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    const-string v0, "LAST_KNOWN_SSIDS_OBJ"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ofd_last_config_update_attempt"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ofd_hb_random_id"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()J
    .locals 2

    const-string v0, "ofd_hb_time_sync_last_time_saved"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "token_time_confirm_called"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LAST_KNOWN_SSIDS_OBJ"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()J
    .locals 3

    const-string v0, "last_error_handler_send_timestamp"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbr/com/topaz/l/g0;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ofd_frd_dtct"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ofd_last_application_version_info"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    const-string v0, "ofd_hb_random_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ofd_frd_ttct"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ofd_last_heartbeat_version_info"

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()J
    .locals 3

    const-string v0, "ofd_last_config_update_succeed"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbr/com/topaz/l/g0;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ofd_l_pi_c_e_t"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ofd_hb_cron_ids_cache"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cron_ids"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    iget-object v2, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "168"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public i(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cell_info_last_requested_update_timestamp"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()J
    .locals 2

    const-string v0, "token_time_confirm_called"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public j(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ofd_hb_time_sync_last_time_saved"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()J
    .locals 2

    const-string v0, "ofd_frd_mtct"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "last_error_handler_send_timestamp"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()J
    .locals 3

    const-string v0, "ofd_last_config_update_attempt"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbr/com/topaz/l/g0;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ofd_last_config_update_succeed"

    invoke-direct {p0, p2, p1}, Lbr/com/topaz/l/g0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m()J
    .locals 2

    const-string v0, "ofd_frd_dtct"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()V
    .locals 1

    const-string v0, "LAST_KNOWN_SSIDS_OBJ"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/g0;->h(Ljava/lang/String;)V

    return-void
.end method

.method public o()J
    .locals 2

    const-string v0, "cell_info_last_requested_update_timestamp"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 2

    const-string v0, "ofd_frd_ttct"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    const-string v0, "ofd_last_heartbeat_version_info"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()J
    .locals 2

    const-string v0, "ofd_frd_ltct"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()Lbr/com/topaz/e/a;
    .locals 3

    const-string v0, "ofd_hb_cached_biometric_key_timestamps"

    const-string v1, "[]"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lbr/com/topaz/e/a;->a(Ljava/lang/String;)Lbr/com/topaz/e/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "171"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    new-instance v0, Lbr/com/topaz/e/a;

    invoke-direct {v0}, Lbr/com/topaz/e/a;-><init>()V

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    const-string v0, "ofd_hb_client_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lbr/com/topaz/l/v;
    .locals 6

    new-instance v0, Lbr/com/topaz/l/v;

    invoke-direct {v0}, Lbr/com/topaz/l/v;-><init>()V

    const-string v1, "last_manual_update_timestamp"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lbr/com/topaz/l/g0;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lbr/com/topaz/l/v;->d(J)V

    const-string v1, "last_manual_scanapps_timestamp"

    invoke-direct {p0, v1, v2, v3}, Lbr/com/topaz/l/g0;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lbr/com/topaz/l/v;->c(J)V

    const-string v1, "last_manual_clientevent_timestamp"

    invoke-direct {p0, v1, v2, v3}, Lbr/com/topaz/l/g0;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lbr/com/topaz/l/v;->a(J)V

    const-string v1, "last_manual_event_timestamp"

    invoke-direct {p0, v1, v2, v3}, Lbr/com/topaz/l/g0;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/v;->b(J)V

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    const-string v0, "ofd_hb_event_timestamp"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()J
    .locals 2

    const-string v0, "token_time_diff"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()Ljava/util/LinkedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lbr/com/topaz/l/y;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "ofd_hb_cached_notification_list"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lbr/com/topaz/l/g0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "n_list"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lbr/com/topaz/l/y;

    invoke-direct {v4}, Lbr/com/topaz/l/y;-><init>()V

    const-string v5, "key"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/y;->a(Ljava/lang/String;)V

    const-string v5, "time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lbr/com/topaz/l/y;->a(J)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    iget-object v2, p0, Lbr/com/topaz/l/g0;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "166"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
