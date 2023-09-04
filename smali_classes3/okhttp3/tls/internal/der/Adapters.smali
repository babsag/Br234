.class public final Lokhttp3/tls/internal/der/Adapters;
.super Ljava/lang/Object;
.source "Adapters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\\\u0010]J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\nJm\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u001a\u0010\u0014\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00130\u0012\"\u0006\u0012\u0002\u0008\u00030\u00132\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00160\u00152\u0016\u0010\u0018\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0016\u0012\u0004\u0012\u00028\u00000\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJA\u0010\u001e\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d0\u00132\u001a\u0010\u001c\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00130\u0012\"\u0006\u0012\u0002\u0008\u00030\u0013\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ1\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00132\u001a\u0010 \u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00130\u0015\u00a2\u0006\u0004\u0008!\u0010\"Ji\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00132<\u0008\u0002\u0010\u001c\u001a\u001e\u0012\u001a\u0008\u0001\u0012\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030#\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00130\u001d0\u0012\"\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030#\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00130\u001d2\u0008\u0008\u0002\u0010%\u001a\u00020$2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\'\u0010(R!\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-R\u001f\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u0010+\u001a\u0004\u00080\u0010-R\u001f\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00082\u0010+\u001a\u0004\u00083\u0010-R\u001f\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00085\u0010+\u001a\u0004\u00086\u0010-R\u001f\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00088\u0010+\u001a\u0004\u00089\u0010-R\u001f\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010+\u001a\u0004\u0008<\u0010-R\u001f\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010+\u001a\u0004\u0008@\u0010-R\u001f\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008B\u0010+\u001a\u0004\u0008C\u0010-R\u001f\u0010H\u001a\u0008\u0012\u0004\u0012\u00020E0\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u0010+\u001a\u0004\u0008G\u0010-R\u001f\u0010K\u001a\u0008\u0012\u0004\u0012\u00020$0\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u0010+\u001a\u0004\u0008J\u0010-R\u001f\u0010O\u001a\u0008\u0012\u0004\u0012\u00020L0\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010+\u001a\u0004\u0008N\u0010-R\u001f\u0010U\u001a\u0008\u0012\u0004\u0012\u00020P0\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010TR:\u0010X\u001a&\u0012\"\u0012 \u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010#\u0012\u000e\u0012\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u00130\u001d0\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u001f\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008Y\u0010+\u001a\u0004\u0008Z\u0010-\u00a8\u0006^"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/Adapters;",
        "",
        "",
        "string",
        "",
        "parseUtcTime$okhttp_tls",
        "(Ljava/lang/String;)J",
        "parseUtcTime",
        "date",
        "formatUtcTime$okhttp_tls",
        "(J)Ljava/lang/String;",
        "formatUtcTime",
        "parseGeneralizedTime$okhttp_tls",
        "parseGeneralizedTime",
        "formatGeneralizedTime$okhttp_tls",
        "formatGeneralizedTime",
        "T",
        "name",
        "",
        "Lokhttp3/tls/internal/der/DerAdapter;",
        "members",
        "Lkotlin/Function1;",
        "",
        "decompose",
        "construct",
        "Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "sequence",
        "(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "choices",
        "Lkotlin/Pair;",
        "choice",
        "([Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/DerAdapter;",
        "chooser",
        "usingTypeHint",
        "(Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/DerAdapter;",
        "Lkotlin/reflect/KClass;",
        "",
        "isOptional",
        "optionalValue",
        "any",
        "([Lkotlin/Pair;ZLjava/lang/Object;)Lokhttp3/tls/internal/der/DerAdapter;",
        "",
        "f",
        "Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "getNULL",
        "()Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "NULL",
        "g",
        "getOBJECT_IDENTIFIER",
        "OBJECT_IDENTIFIER",
        "l",
        "getGENERALIZED_TIME",
        "GENERALIZED_TIME",
        "i",
        "getPRINTABLE_STRING",
        "PRINTABLE_STRING",
        "k",
        "getUTC_TIME",
        "UTC_TIME",
        "j",
        "getIA5_STRING",
        "IA5_STRING",
        "Lokhttp3/tls/internal/der/BitString;",
        "d",
        "getBIT_STRING",
        "BIT_STRING",
        "h",
        "getUTF8_STRING",
        "UTF8_STRING",
        "Lokio/ByteString;",
        "e",
        "getOCTET_STRING",
        "OCTET_STRING",
        "a",
        "getBOOLEAN",
        "BOOLEAN",
        "Ljava/math/BigInteger;",
        "c",
        "getINTEGER_AS_BIG_INTEGER",
        "INTEGER_AS_BIG_INTEGER",
        "Lokhttp3/tls/internal/der/AnyValue;",
        "m",
        "Lokhttp3/tls/internal/der/DerAdapter;",
        "getANY_VALUE",
        "()Lokhttp3/tls/internal/der/DerAdapter;",
        "ANY_VALUE",
        "n",
        "Ljava/util/List;",
        "defaultAnyChoices",
        "b",
        "getINTEGER_AS_LONG",
        "INTEGER_AS_LONG",
        "<init>",
        "()V",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/tls/internal/der/Adapters;

.field private static final a:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/BitString;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final k:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final l:Lokhttp3/tls/internal/der/BasicDerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:Lokhttp3/tls/internal/der/DerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Lokhttp3/tls/internal/der/AnyValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/Adapters;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/Adapters;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/Adapters;->INSTANCE:Lokhttp3/tls/internal/der/Adapters;

    .line 2
    new-instance v0, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 3
    new-instance v6, Lokhttp3/tls/internal/der/Adapters$BOOLEAN$1;

    invoke-direct {v6}, Lokhttp3/tls/internal/der/Adapters$BOOLEAN$1;-><init>()V

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x70

    const/4 v11, 0x0

    move-object v1, v0

    .line 4
    invoke-direct/range {v1 .. v11}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/tls/internal/der/Adapters;->a:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 5
    new-instance v1, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 6
    new-instance v17, Lokhttp3/tls/internal/der/Adapters$INTEGER_AS_LONG$1;

    invoke-direct/range {v17 .. v17}, Lokhttp3/tls/internal/der/Adapters$INTEGER_AS_LONG$1;-><init>()V

    const-string v13, "INTEGER"

    const/4 v14, 0x0

    const-wide/16 v15, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x70

    const/16 v22, 0x0

    move-object v12, v1

    .line 7
    invoke-direct/range {v12 .. v22}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lokhttp3/tls/internal/der/Adapters;->b:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 8
    new-instance v1, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 9
    new-instance v7, Lokhttp3/tls/internal/der/Adapters$INTEGER_AS_BIG_INTEGER$1;

    invoke-direct {v7}, Lokhttp3/tls/internal/der/Adapters$INTEGER_AS_BIG_INTEGER$1;-><init>()V

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    const-wide/16 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x70

    const/4 v12, 0x0

    move-object v2, v1

    .line 10
    invoke-direct/range {v2 .. v12}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lokhttp3/tls/internal/der/Adapters;->c:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 11
    new-instance v2, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 12
    new-instance v18, Lokhttp3/tls/internal/der/Adapters$BIT_STRING$1;

    invoke-direct/range {v18 .. v18}, Lokhttp3/tls/internal/der/Adapters$BIT_STRING$1;-><init>()V

    const-string v14, "BIT STRING"

    const/4 v15, 0x0

    const-wide/16 v16, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x70

    const/16 v23, 0x0

    move-object v13, v2

    .line 13
    invoke-direct/range {v13 .. v23}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lokhttp3/tls/internal/der/Adapters;->d:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 14
    new-instance v14, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 15
    new-instance v8, Lokhttp3/tls/internal/der/Adapters$OCTET_STRING$1;

    invoke-direct {v8}, Lokhttp3/tls/internal/der/Adapters$OCTET_STRING$1;-><init>()V

    const-string v4, "OCTET STRING"

    const/4 v5, 0x0

    const-wide/16 v6, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x70

    const/4 v13, 0x0

    move-object v3, v14

    .line 16
    invoke-direct/range {v3 .. v13}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v14, Lokhttp3/tls/internal/der/Adapters;->e:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 17
    new-instance v3, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 18
    new-instance v20, Lokhttp3/tls/internal/der/Adapters$NULL$1;

    invoke-direct/range {v20 .. v20}, Lokhttp3/tls/internal/der/Adapters$NULL$1;-><init>()V

    const-string v16, "NULL"

    const/16 v17, 0x0

    const-wide/16 v18, 0x5

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x70

    const/16 v25, 0x0

    move-object v15, v3

    .line 19
    invoke-direct/range {v15 .. v25}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lokhttp3/tls/internal/der/Adapters;->f:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 20
    new-instance v4, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 21
    new-instance v31, Lokhttp3/tls/internal/der/Adapters$OBJECT_IDENTIFIER$1;

    invoke-direct/range {v31 .. v31}, Lokhttp3/tls/internal/der/Adapters$OBJECT_IDENTIFIER$1;-><init>()V

    const-string v27, "OBJECT IDENTIFIER"

    const/16 v28, 0x0

    const-wide/16 v29, 0x6

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x70

    const/16 v36, 0x0

    move-object/from16 v26, v4

    .line 22
    invoke-direct/range {v26 .. v36}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lokhttp3/tls/internal/der/Adapters;->g:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 23
    new-instance v5, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 24
    new-instance v20, Lokhttp3/tls/internal/der/Adapters$UTF8_STRING$1;

    invoke-direct/range {v20 .. v20}, Lokhttp3/tls/internal/der/Adapters$UTF8_STRING$1;-><init>()V

    const-string v16, "UTF8"

    const-wide/16 v18, 0xc

    move-object v15, v5

    .line 25
    invoke-direct/range {v15 .. v25}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lokhttp3/tls/internal/der/Adapters;->h:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 26
    new-instance v6, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 27
    new-instance v31, Lokhttp3/tls/internal/der/Adapters$PRINTABLE_STRING$1;

    invoke-direct/range {v31 .. v31}, Lokhttp3/tls/internal/der/Adapters$PRINTABLE_STRING$1;-><init>()V

    const-string v27, "PRINTABLE STRING"

    const-wide/16 v29, 0x13

    move-object/from16 v26, v6

    .line 28
    invoke-direct/range {v26 .. v36}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lokhttp3/tls/internal/der/Adapters;->i:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 29
    new-instance v7, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 30
    new-instance v20, Lokhttp3/tls/internal/der/Adapters$IA5_STRING$1;

    invoke-direct/range {v20 .. v20}, Lokhttp3/tls/internal/der/Adapters$IA5_STRING$1;-><init>()V

    const-string v16, "IA5 STRING"

    const-wide/16 v18, 0x16

    move-object v15, v7

    .line 31
    invoke-direct/range {v15 .. v25}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lokhttp3/tls/internal/der/Adapters;->j:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 32
    new-instance v8, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 33
    new-instance v31, Lokhttp3/tls/internal/der/Adapters$UTC_TIME$1;

    invoke-direct/range {v31 .. v31}, Lokhttp3/tls/internal/der/Adapters$UTC_TIME$1;-><init>()V

    const-string v27, "UTC TIME"

    const-wide/16 v29, 0x17

    move-object/from16 v26, v8

    .line 34
    invoke-direct/range {v26 .. v36}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Lokhttp3/tls/internal/der/Adapters;->k:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 35
    new-instance v9, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 36
    new-instance v20, Lokhttp3/tls/internal/der/Adapters$GENERALIZED_TIME$1;

    invoke-direct/range {v20 .. v20}, Lokhttp3/tls/internal/der/Adapters$GENERALIZED_TIME$1;-><init>()V

    const-string v16, "GENERALIZED TIME"

    const-wide/16 v18, 0x18

    move-object v15, v9

    .line 37
    invoke-direct/range {v15 .. v25}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v9, Lokhttp3/tls/internal/der/Adapters;->l:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 38
    new-instance v10, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;

    invoke-direct {v10}, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;-><init>()V

    sput-object v10, Lokhttp3/tls/internal/der/Adapters;->m:Lokhttp3/tls/internal/der/DerAdapter;

    const/16 v11, 0xc

    new-array v11, v11, [Lkotlin/Pair;

    .line 39
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v12, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v11, v12

    .line 40
    const-class v0, Ljava/math/BigInteger;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v11, v1

    .line 41
    const-class v0, Lokhttp3/tls/internal/der/BitString;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v11, v1

    .line 42
    const-class v0, Lokio/ByteString;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v11, v1

    .line 43
    const-class v0, Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v11, v1

    .line 44
    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v11, v1

    .line 45
    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v11, v1

    .line 46
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v11, v1

    .line 47
    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v11, v1

    .line 48
    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v11, v1

    .line 49
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v11, v1

    .line 50
    const-class v0, Lokhttp3/tls/internal/der/AnyValue;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v11, v1

    .line 51
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/tls/internal/der/Adapters;->n:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic any$default(Lokhttp3/tls/internal/der/Adapters;[Lkotlin/Pair;ZLjava/lang/Object;ILjava/lang/Object;)Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lokhttp3/tls/internal/der/Adapters;->n:Ljava/util/List;

    new-array p5, v0, [Lkotlin/Pair;

    .line 2
    invoke-interface {p1, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lkotlin/Pair;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 3
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/tls/internal/der/Adapters;->any([Lkotlin/Pair;ZLjava/lang/Object;)Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final any([Lkotlin/Pair;ZLjava/lang/Object;)Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1
    .param p1    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;+",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;>;Z",
            "Ljava/lang/Object;",
            ")",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "choices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/Adapters$any$1;

    invoke-direct {v0, p2, p3, p1}, Lokhttp3/tls/internal/der/Adapters$any$1;-><init>(ZLjava/lang/Object;[Lkotlin/Pair;)V

    return-object v0
.end method

.method public final varargs choice([Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1
    .param p1    # [Lokhttp3/tls/internal/der/DerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;)",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "choices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/Adapters$choice$1;

    invoke-direct {v0, p1}, Lokhttp3/tls/internal/der/Adapters$choice$1;-><init>([Lokhttp3/tls/internal/der/DerAdapter;)V

    return-object v0
.end method

.method public final formatGeneralizedTime$okhttp_tls(J)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "GMT"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dateFormat.format(date)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final formatUtcTime$okhttp_tls(J)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "GMT"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyMMddHHmmss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    new-instance v0, Ljava/util/Date;

    const-wide v2, -0x92f3973c00L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dateFormat.format(date)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getANY_VALUE()Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Lokhttp3/tls/internal/der/AnyValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->m:Lokhttp3/tls/internal/der/DerAdapter;

    return-object v0
.end method

.method public final getBIT_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokhttp3/tls/internal/der/BitString;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->d:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getBOOLEAN()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->a:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getGENERALIZED_TIME()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->l:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getIA5_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->j:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getINTEGER_AS_BIG_INTEGER()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->c:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getINTEGER_AS_LONG()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->b:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getNULL()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->f:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getOBJECT_IDENTIFIER()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->g:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getOCTET_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->e:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getPRINTABLE_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->i:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getUTC_TIME()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->k:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final getUTF8_STRING()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/tls/internal/der/Adapters;->h:Lokhttp3/tls/internal/der/BasicDerAdapter;

    return-object v0
.end method

.method public final parseGeneralizedTime$okhttp_tls(Ljava/lang/String;)J
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GMT"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "parsed"

    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 6
    :catch_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse GeneralizedTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final parseUtcTime$okhttp_tls(Ljava/lang/String;)J
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GMT"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyMMddHHmmss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    new-instance v0, Ljava/util/Date;

    const-wide v2, -0x92f3973c00L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 5
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "parsed"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 7
    :catch_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse UTCTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lokhttp3/tls/internal/der/DerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/util/List<",
            "*>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "*>;+TT;>;)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "name"

    move-object/from16 v5, p1

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "members"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "decompose"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "construct"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v9, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;

    invoke-direct {v9, v0, v2, v1}, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;-><init>([Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 2
    new-instance v0, Lokhttp3/tls/internal/der/BasicDerAdapter;

    const/4 v6, 0x0

    const-wide/16 v7, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x70

    const/4 v14, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final usingTypeHint(Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;>;)",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chooser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/Adapters$usingTypeHint$1;

    invoke-direct {v0, p1}, Lokhttp3/tls/internal/der/Adapters$usingTypeHint$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
