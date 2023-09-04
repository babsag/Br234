.class public final Lio/sentry/Session$Deserializer;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/Session;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v1, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/Session;
    .locals 26
    .param p1    # Lio/sentry/JsonObjectReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->beginObject()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    move-object/from16 v17, v15

    const-string v15, "release"

    move-object/from16 v18, v14

    const-string v14, "status"

    move-object/from16 v19, v13

    const-string v13, "errors"

    move-object/from16 v20, v12

    const-string v12, "started"

    if-ne v2, v0, :cond_11

    .line 4
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, -0x1

    move-object/from16 v24, v11

    const/4 v11, 0x1

    const/16 v25, 0x0

    sparse-switch v2, :sswitch_data_0

    :goto_1
    const/4 v2, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "attrs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "timestamp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    goto :goto_2

    :sswitch_2
    const-string v2, "init"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    goto :goto_2

    :sswitch_3
    const-string v2, "sid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x6

    goto :goto_2

    :sswitch_4
    const-string v2, "seq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_5
    const-string v2, "did"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_6
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_7
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_9
    const-string v2, "duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_0

    if-nez v7, :cond_a

    .line 6
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v7, v2

    :cond_a
    move-object/from16 v2, p1

    .line 7
    invoke-virtual {v2, v1, v7, v0}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    move-object/from16 v2, p1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->beginObject()V

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    .line 9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v12, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v12, :cond_f

    .line 10
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :goto_4
    const/4 v0, -0x1

    goto :goto_5

    :sswitch_a
    const-string v12, "user_agent"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x3

    goto :goto_5

    :sswitch_b
    const-string v12, "ip_address"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    const/4 v0, 0x2

    goto :goto_5

    :sswitch_c
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    const/4 v0, 0x1

    goto :goto_5

    :sswitch_d
    const-string v12, "environment"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_1

    .line 12
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->skipValue()V

    goto :goto_3

    .line 13
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 14
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 15
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 16
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 17
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->endObject()V

    move-object/from16 v15, v17

    goto :goto_7

    :pswitch_5
    move-object/from16 v2, p1

    .line 18
    invoke-virtual/range {p1 .. p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v6

    goto :goto_6

    :pswitch_6
    move-object/from16 v2, p1

    .line 19
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_6

    :pswitch_7
    move-object/from16 v2, p1

    .line 20
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_0
    const/4 v0, 0x0

    .line 22
    :catch_1
    sget-object v12, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v25

    const-string v0, "%s sid is not valid."

    invoke-interface {v1, v12, v0, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_8
    move-object/from16 v2, p1

    .line 23
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    goto :goto_9

    :pswitch_9
    move-object/from16 v2, p1

    .line 24
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v8

    :cond_10
    :goto_6
    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    :goto_7
    move-object/from16 v12, v20

    :goto_8
    move-object/from16 v11, v24

    goto :goto_9

    :pswitch_a
    move-object/from16 v2, p1

    .line 25
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 26
    invoke-static {v0}, Lio/sentry/Session$State;->valueOf(Ljava/lang/String;)Lio/sentry/Session$State;

    move-result-object v4

    goto :goto_6

    :pswitch_b
    move-object/from16 v2, p1

    .line 27
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    :pswitch_c
    move-object/from16 v2, p1

    .line 28
    invoke-virtual/range {p1 .. p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v5

    goto :goto_6

    :pswitch_d
    move-object/from16 v2, p1

    .line 29
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v12

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    goto :goto_8

    :goto_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_11
    move-object/from16 v2, p1

    move-object/from16 v24, v11

    if-eqz v4, :cond_15

    if-eqz v5, :cond_14

    if-eqz v3, :cond_13

    if-eqz v16, :cond_12

    .line 30
    new-instance v0, Lio/sentry/Session;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v3, v0

    move-object v15, v7

    move v7, v1

    move-object/from16 v11, v24

    move-object/from16 v12, v20

    move-object/from16 v13, v19

    move-object/from16 v14, v18

    move-object v1, v15

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v16}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lio/sentry/Session;->setUnknown(Ljava/util/Map;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lio/sentry/vendor/gson/stream/JsonReader;->endObject()V

    return-object v0

    :cond_12
    move-object/from16 v0, p0

    .line 34
    invoke-direct {v0, v15, v1}, Lio/sentry/Session$Deserializer;->a(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_13
    move-object/from16 v0, p0

    .line 35
    invoke-direct {v0, v13, v1}, Lio/sentry/Session$Deserializer;->a(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_14
    move-object/from16 v0, p0

    .line 36
    invoke-direct {v0, v12, v1}, Lio/sentry/Session$Deserializer;->a(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_15
    move-object/from16 v0, p0

    .line 37
    invoke-direct {v0, v14, v1}, Lio/sentry/Session$Deserializer;->a(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_9
        -0x7114bf7f -> :sswitch_8
        -0x4d2a9095 -> :sswitch_7
        -0x3532300e -> :sswitch_6
        0x1847f -> :sswitch_5
        0x1bc5f -> :sswitch_4
        0x1bcce -> :sswitch_3
        0x316510 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x58d64a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x51ecded -> :sswitch_d
        0x41012807 -> :sswitch_c
        0x583738dc -> :sswitch_b
        0x724f4d91 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/sentry/JsonObjectReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/Session$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/Session;

    move-result-object p1

    return-object p1
.end method
