
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";

CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";

CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";

SET default_tablespace = '';

SET default_table_access_method = "heap";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_chat_audiences" (
    "id" "uuid" NOT NULL,
    "role" character varying(255),
    "status" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."IsaDate_chat_audiences" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_chat_messages" (
    "id" "uuid" NOT NULL,
    "message" "text",
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."IsaDate_chat_messages" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_chats" (
    "id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL,
    "chat_type" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_name" character varying(255),
    "status" character varying(255)
);

ALTER TABLE "public"."IsaDate_chats" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_event_audiences" (
    "id" "uuid" NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "user_id" "uuid" NOT NULL,
    "event_id" "uuid" NOT NULL
);

ALTER TABLE "public"."IsaDate_event_audiences" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_events" (
    "id" "uuid" NOT NULL,
    "title" character varying(255),
    "place" character varying(255),
    "description" "text",
    "reminder" character varying(255),
    "is_solo" boolean DEFAULT false,
    "is_important" boolean DEFAULT false,
    "start_date" "date",
    "end_date" "date",
    "start_time" integer,
    "end_time" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."IsaDate_events" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_friends" (
    "id" "uuid" NOT NULL,
    "friend_id" "uuid",
    "status" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL,
    "note" character varying(255)
);

ALTER TABLE "public"."IsaDate_friends" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_media" (
    "id" "uuid" NOT NULL,
    "original_name" character varying(255),
    "path" character varying(255),
    "mime_data" "text",
    "entity_id" "uuid",
    "key" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."IsaDate_media" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_sessions" (
    "id" "uuid" NOT NULL,
    "device_id" character varying(255),
    "access_token" "uuid",
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."IsaDate_sessions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."IsaDate_users" (
    "id" "uuid" NOT NULL,
    "first_name" character varying(255),
    "last_name" character varying(255),
    "email" character varying(255) NOT NULL,
    "gender" character varying(255),
    "dob" "date",
    "otp" integer,
    "status" character varying(255) DEFAULT 'active'::character varying,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "username" character varying(255)
);

ALTER TABLE "public"."IsaDate_users" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_accounts" (
    "id" "uuid" NOT NULL,
    "name" character varying(255),
    "description" character varying(255),
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid",
    "status" character varying(255) DEFAULT 'active'::character varying
);

ALTER TABLE "public"."PennyWise_accounts" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_budget_items" (
    "id" "uuid" NOT NULL,
    "budget_id" "uuid" NOT NULL,
    "percentage" double precision,
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "category_id" "uuid" NOT NULL
);

ALTER TABLE "public"."PennyWise_budget_items" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_budgets" (
    "id" "uuid" NOT NULL,
    "title" character varying(255),
    "amount" double precision,
    "description" "text",
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid" NOT NULL,
    "account_id" "uuid" NOT NULL
);

ALTER TABLE "public"."PennyWise_budgets" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_categories" (
    "id" "uuid" NOT NULL,
    "title" character varying(255),
    "description" "text",
    "color" character varying(255),
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid",
    "status" character varying(255) DEFAULT 'active'::character varying,
    "icon" character varying(255),
    "type" character varying(255)
);

ALTER TABLE "public"."PennyWise_categories" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_fcm_tokens" (
    "id" "uuid" NOT NULL,
    "fcm_token" character varying(255),
    "device_info" "text",
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid"
);

ALTER TABLE "public"."PennyWise_fcm_tokens" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_media" (
    "id" "uuid" NOT NULL,
    "original_name" character varying(255),
    "path" character varying(255),
    "mime_data" "text",
    "entity_id" "uuid",
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "key" character varying(255),
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."PennyWise_media" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_notifications" (
    "id" "uuid" NOT NULL,
    "description" "text",
    "title" character varying(255),
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid" NOT NULL,
    "transaction_id" "uuid",
    "status" character varying(255) DEFAULT 'unread'::character varying
);

ALTER TABLE "public"."PennyWise_notifications" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_payments" (
    "id" "uuid" NOT NULL,
    "amount" double precision,
    "status" character varying(255),
    "payment_mode" character varying(255),
    "payment_data" "text",
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "subscription_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."PennyWise_payments" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_reminders" (
    "id" "uuid" NOT NULL,
    "status" character varying(255),
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid" NOT NULL,
    "transaction_id" "uuid" NOT NULL,
    "remind_at" timestamp with time zone
);

ALTER TABLE "public"."PennyWise_reminders" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_schedules" (
    "id" "uuid" NOT NULL,
    "frequency" character varying(255),
    "repeat_on" character varying(255),
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "transaction_id" "uuid",
    "user_id" "uuid",
    "status" character varying(255) DEFAULT 'active'::character varying
);

ALTER TABLE "public"."PennyWise_schedules" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_sessions" (
    "id" "uuid" NOT NULL,
    "device_id" character varying(255),
    "access_token" "uuid",
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."PennyWise_sessions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_subscription_transactions" (
    "id" "uuid" NOT NULL,
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "subscription_id" "uuid" NOT NULL,
    "transaction_data" "jsonb",
    "platform" character varying(255),
    "transaction_date" timestamp with time zone,
    "price" character varying(255),
    "localized_price" character varying(255),
    "currency" character varying(255),
    "country_code" character varying(255)
);

ALTER TABLE "public"."PennyWise_subscription_transactions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_subscriptions" (
    "id" "uuid" NOT NULL,
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid" NOT NULL,
    "platform" character varying(255),
    "expire_date" "date",
    "product_id" character varying(255),
    "plan_type" character varying(255),
    "transaction_data" "jsonb",
    "auto_renewal" boolean,
    "transaction_date" timestamp with time zone,
    "transaction_id" character varying(255),
    "price" character varying(255),
    "currency" character varying(255),
    "country_code" character varying(255),
    "localized_price" character varying(255)
);

ALTER TABLE "public"."PennyWise_subscriptions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_support_ticket_comments" (
    "id" "uuid" NOT NULL,
    "description" "text",
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid" NOT NULL,
    "ticket_id" "uuid" NOT NULL
);

ALTER TABLE "public"."PennyWise_support_ticket_comments" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_support_tickets" (
    "id" "uuid" NOT NULL,
    "description" "text",
    "status" character varying(255),
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid" NOT NULL,
    "media_id" "uuid"
);

ALTER TABLE "public"."PennyWise_support_tickets" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_transactions" (
    "id" "uuid" NOT NULL,
    "amount" double precision,
    "description" "text",
    "type" character varying(255),
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "user_id" "uuid" NOT NULL,
    "category_id" "uuid" NOT NULL,
    "transaction_date" timestamp with time zone,
    "title" character varying(255),
    "last_run_date" timestamp with time zone,
    "budget_id" "uuid",
    "status" character varying(255),
    "account_id" "uuid",
    "last_run_date_reminder" timestamp with time zone
);

ALTER TABLE "public"."PennyWise_transactions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_transactions_meta" (
    "id" "uuid" NOT NULL,
    "created_at" timestamp with time zone NOT NULL,
    "entity_id" "uuid",
    "meta_key" character varying(255),
    "meta_value" character varying(255),
    "updated_at" timestamp with time zone NOT NULL,
    "parent_id" "uuid"
);

ALTER TABLE "public"."PennyWise_transactions_meta" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."PennyWise_users" (
    "id" "uuid" NOT NULL,
    "first_name" character varying(255),
    "last_name" character varying(255),
    "gender" character varying(255),
    "dob" timestamp with time zone,
    "otp" integer,
    "status" character varying(255) DEFAULT 'active'::character varying,
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone NOT NULL,
    "role" character varying(255) DEFAULT 'user'::character varying,
    "email" character varying(255) NOT NULL
);

ALTER TABLE "public"."PennyWise_users" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_chat_audiences" (
    "id" "uuid" NOT NULL,
    "role" character varying(255),
    "status" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."_chat_audiences" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_chat_message_attachments" (
    "id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "file_name" character varying(255),
    "url" character varying(255),
    "chat_id" "uuid",
    "message_id" "uuid",
    "event_id" "uuid"
);

ALTER TABLE "public"."_chat_message_attachments" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_chat_messages" (
    "id" "uuid" NOT NULL,
    "message" "text",
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."_chat_messages" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_chats" (
    "id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_type" character varying(255),
    "chat_name" character varying(255),
    "status" character varying(255)
);

ALTER TABLE "public"."_chats" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_event_attendences" (
    "id" "uuid" NOT NULL,
    "note" "text",
    "status" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL,
    "event_id" "uuid" NOT NULL
);

ALTER TABLE "public"."_event_attendences" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_event_audiences" (
    "id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL,
    "event_id" "uuid" NOT NULL,
    "status" character varying(255) DEFAULT 'pending'::character varying,
    "role" character varying(255) DEFAULT 'participant'::character varying
);

ALTER TABLE "public"."_event_audiences" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_events" (
    "id" "uuid" NOT NULL,
    "title" character varying(255),
    "venue" character varying(255),
    "description" "text",
    "reminder" character varying(255),
    "is_solo" boolean DEFAULT false,
    "is_important" boolean DEFAULT false,
    "start_date" "date",
    "end_date" "date",
    "start_time" integer,
    "end_time" integer,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL,
    "venue_long" double precision,
    "venue_lat" double precision,
    "is_reminder_sent" boolean DEFAULT false
);

ALTER TABLE "public"."_events" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_fcm_tokens" (
    "id" "uuid" NOT NULL,
    "user_id" "uuid",
    "fcm_token" character varying(255),
    "device_info" "text",
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);

ALTER TABLE "public"."_fcm_tokens" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_friends" (
    "id" "uuid" NOT NULL,
    "friend_id" "uuid",
    "status" character varying(255),
    "user_id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "note" character varying(255)
);

ALTER TABLE "public"."_friends" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_media" (
    "id" "uuid" NOT NULL,
    "original_name" character varying(255),
    "path" character varying(255),
    "mime_data" "text",
    "entity_id" "uuid",
    "key" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."_media" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_notifications" (
    "id" "uuid" NOT NULL,
    "description" "text",
    "title" character varying(255),
    "status" character varying(255) DEFAULT 'unread'::character varying,
    "created_at" timestamp with time zone NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid",
    "data" "json"
);

ALTER TABLE "public"."_notifications" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_sessions" (
    "id" "uuid" NOT NULL,
    "device_id" character varying(255),
    "access_token" "uuid",
    "user_id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."_sessions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."_users" (
    "id" "uuid" NOT NULL,
    "username" character varying(255),
    "first_name" character varying(255),
    "last_name" character varying(255),
    "email" character varying(255) NOT NULL,
    "gender" character varying(255) DEFAULT 'other'::character varying,
    "dob" "date",
    "otp" integer,
    "status" character varying(255) DEFAULT 'active'::character varying,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "working_hours_days" character varying(255),
    "working_hours_time" character varying(255),
    "sleeping_hours_days" character varying(255),
    "sleeping_hours_time" character varying(255),
    "longitude" double precision,
    "latitude" double precision,
    "fcm_token" character varying(255),
    "device_info" "text"
);

ALTER TABLE "public"."_users" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."chat_audiences" (
    "id" "uuid" NOT NULL,
    "role" character varying(255),
    "status" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."chat_audiences" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."chat_message_attachments" (
    "id" "uuid" NOT NULL,
    "file_name" character varying(255),
    "url" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_id" "uuid",
    "message_id" "uuid",
    "event_id" "uuid"
);

ALTER TABLE "public"."chat_message_attachments" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."chat_messages" (
    "id" "uuid" NOT NULL,
    "message" "text",
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chat_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."chat_messages" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."chats" (
    "id" "uuid" NOT NULL,
    "status" character varying(255),
    "chat_type" character varying(255),
    "chat_name" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."chats" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."event_attendences" (
    "id" "uuid" NOT NULL,
    "note" "text",
    "status" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL,
    "event_id" "uuid" NOT NULL
);

ALTER TABLE "public"."event_attendences" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."event_audiences" (
    "id" "uuid" NOT NULL,
    "status" character varying(255) DEFAULT 'pending'::character varying,
    "role" character varying(255) DEFAULT 'participant'::character varying,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL,
    "event_id" "uuid" NOT NULL
);

ALTER TABLE "public"."event_audiences" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."events" (
    "id" "uuid" NOT NULL,
    "title" character varying(255),
    "venue" character varying(255),
    "description" "text",
    "reminder" character varying(255),
    "is_reminder_sent" boolean DEFAULT false,
    "is_solo" boolean DEFAULT false,
    "is_important" boolean DEFAULT false,
    "start_date" "date",
    "end_date" "date",
    "start_time" integer,
    "end_time" integer,
    "venue_long" double precision,
    "venue_lat" double precision,
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."events" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."friends" (
    "id" "uuid" NOT NULL,
    "friend_id" "uuid",
    "status" character varying(255),
    "note" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."friends" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."media" (
    "id" "uuid" NOT NULL,
    "original_name" character varying(255),
    "path" character varying(255),
    "mime_data" "text",
    "entity_id" "uuid",
    "key" character varying(255),
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."media" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."notifications" (
    "id" "uuid" NOT NULL,
    "description" "text",
    "title" character varying(255),
    "status" character varying(255) DEFAULT 'unread'::character varying,
    "data" "json",
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid"
);

ALTER TABLE "public"."notifications" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."sessions" (
    "id" "uuid" NOT NULL,
    "device_id" character varying(255),
    "access_token" "uuid",
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE "public"."sessions" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "uuid" NOT NULL,
    "username" character varying(255),
    "first_name" character varying(255),
    "last_name" character varying(255),
    "email" character varying(255) NOT NULL,
    "gender" character varying(255) DEFAULT 'other'::character varying,
    "dob" "date",
    "otp" integer,
    "status" character varying(255) DEFAULT 'active'::character varying,
    "working_hours_days" character varying(255),
    "working_hours_time" character varying(255),
    "sleeping_hours_days" character varying(255),
    "sleeping_hours_time" character varying(255),
    "longitude" double precision,
    "latitude" double precision,
    "fcm_token" character varying(255),
    "device_info" "text",
    "created_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

ALTER TABLE "public"."users" OWNER TO "postgres";

ALTER TABLE ONLY "public"."IsaDate_chat_audiences"
    ADD CONSTRAINT "IsaDate_chat_audiences_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_chat_messages"
    ADD CONSTRAINT "IsaDate_chat_messages_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_chats"
    ADD CONSTRAINT "IsaDate_chats_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_event_audiences"
    ADD CONSTRAINT "IsaDate_event_audiences_pkey1" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_events"
    ADD CONSTRAINT "IsaDate_events_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_friends"
    ADD CONSTRAINT "IsaDate_friends_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_media"
    ADD CONSTRAINT "IsaDate_media_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_sessions"
    ADD CONSTRAINT "IsaDate_sessions_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_users"
    ADD CONSTRAINT "IsaDate_users_email_key" UNIQUE ("email");

ALTER TABLE ONLY "public"."IsaDate_users"
    ADD CONSTRAINT "IsaDate_users_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."IsaDate_users"
    ADD CONSTRAINT "IsaDate_users_username_key" UNIQUE ("username");

ALTER TABLE ONLY "public"."PennyWise_accounts"
    ADD CONSTRAINT "PennyWise_accounts_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_budget_items"
    ADD CONSTRAINT "PennyWise_budget_items_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_budgets"
    ADD CONSTRAINT "PennyWise_budgets_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_categories"
    ADD CONSTRAINT "PennyWise_categories_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_fcm_tokens"
    ADD CONSTRAINT "PennyWise_fcm_tokens_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_media"
    ADD CONSTRAINT "PennyWise_media_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_notifications"
    ADD CONSTRAINT "PennyWise_notifications_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_payments"
    ADD CONSTRAINT "PennyWise_payments_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_reminders"
    ADD CONSTRAINT "PennyWise_reminders_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_schedules"
    ADD CONSTRAINT "PennyWise_schedules_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_sessions"
    ADD CONSTRAINT "PennyWise_sessions_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_subscription_transactions"
    ADD CONSTRAINT "PennyWise_subscription_transactions_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_subscriptions"
    ADD CONSTRAINT "PennyWise_subscriptions_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_support_ticket_comments"
    ADD CONSTRAINT "PennyWise_support_ticket_comments_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_support_tickets"
    ADD CONSTRAINT "PennyWise_support_tickets_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_transactions_meta"
    ADD CONSTRAINT "PennyWise_transactions_meta_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_transactions"
    ADD CONSTRAINT "PennyWise_transactions_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."PennyWise_users"
    ADD CONSTRAINT "PennyWise_users_email_key" UNIQUE ("email");

ALTER TABLE ONLY "public"."PennyWise_users"
    ADD CONSTRAINT "PennyWise_users_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_chat_audiences"
    ADD CONSTRAINT "_chat_audiences_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_chat_message_attachments"
    ADD CONSTRAINT "_chat_message_attachments_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_chat_messages"
    ADD CONSTRAINT "_chat_messages_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_chats"
    ADD CONSTRAINT "_chats_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_event_attendences"
    ADD CONSTRAINT "_event_attendences_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_event_audiences"
    ADD CONSTRAINT "_event_audiences_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_events"
    ADD CONSTRAINT "_events_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_fcm_tokens"
    ADD CONSTRAINT "_fcm_tokens_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_friends"
    ADD CONSTRAINT "_friends_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_media"
    ADD CONSTRAINT "_media_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_notifications"
    ADD CONSTRAINT "_notifications_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_sessions"
    ADD CONSTRAINT "_sessions_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_users"
    ADD CONSTRAINT "_users_email_key" UNIQUE ("email");

ALTER TABLE ONLY "public"."_users"
    ADD CONSTRAINT "_users_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."_users"
    ADD CONSTRAINT "_users_username_key" UNIQUE ("username");

ALTER TABLE ONLY "public"."chat_audiences"
    ADD CONSTRAINT "chat_audiences_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."chat_message_attachments"
    ADD CONSTRAINT "chat_message_attachments_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."chat_messages"
    ADD CONSTRAINT "chat_messages_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."chats"
    ADD CONSTRAINT "chats_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."event_attendences"
    ADD CONSTRAINT "event_attendences_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."event_audiences"
    ADD CONSTRAINT "event_audiences_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."events"
    ADD CONSTRAINT "events_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."friends"
    ADD CONSTRAINT "friends_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."media"
    ADD CONSTRAINT "media_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."sessions"
    ADD CONSTRAINT "sessions_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_email_key" UNIQUE ("email");

ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_username_key" UNIQUE ("username");

ALTER TABLE ONLY "public"."IsaDate_chat_audiences"
    ADD CONSTRAINT "IsaDate_chat_audiences_chat_id_fkey" FOREIGN KEY ("chat_id") REFERENCES "public"."IsaDate_chats"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_chat_audiences"
    ADD CONSTRAINT "IsaDate_chat_audiences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."IsaDate_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_chat_messages"
    ADD CONSTRAINT "IsaDate_chat_messages_chat_id_fkey" FOREIGN KEY ("chat_id") REFERENCES "public"."IsaDate_chats"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_chat_messages"
    ADD CONSTRAINT "IsaDate_chat_messages_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."IsaDate_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_chats"
    ADD CONSTRAINT "IsaDate_chats_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."IsaDate_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_event_audiences"
    ADD CONSTRAINT "IsaDate_event_audiences_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "public"."IsaDate_events"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_event_audiences"
    ADD CONSTRAINT "IsaDate_event_audiences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."IsaDate_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_events"
    ADD CONSTRAINT "IsaDate_events_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."IsaDate_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_friends"
    ADD CONSTRAINT "IsaDate_friends_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."IsaDate_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_media"
    ADD CONSTRAINT "IsaDate_media_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."IsaDate_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."IsaDate_sessions"
    ADD CONSTRAINT "IsaDate_sessions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."IsaDate_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_accounts"
    ADD CONSTRAINT "PennyWise_accounts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."PennyWise_budget_items"
    ADD CONSTRAINT "PennyWise_budget_items_budget_id_fkey" FOREIGN KEY ("budget_id") REFERENCES "public"."PennyWise_budgets"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_budget_items"
    ADD CONSTRAINT "PennyWise_budget_items_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."PennyWise_categories"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_budgets"
    ADD CONSTRAINT "PennyWise_budgets_account_id_fkey" FOREIGN KEY ("account_id") REFERENCES "public"."PennyWise_accounts"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_budgets"
    ADD CONSTRAINT "PennyWise_budgets_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_categories"
    ADD CONSTRAINT "PennyWise_categories_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."PennyWise_media"
    ADD CONSTRAINT "PennyWise_media_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_notifications"
    ADD CONSTRAINT "PennyWise_notifications_transaction_id_fkey" FOREIGN KEY ("transaction_id") REFERENCES "public"."PennyWise_transactions"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."PennyWise_notifications"
    ADD CONSTRAINT "PennyWise_notifications_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_payments"
    ADD CONSTRAINT "PennyWise_payments_subscription_id_fkey" FOREIGN KEY ("subscription_id") REFERENCES "public"."PennyWise_subscriptions"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_payments"
    ADD CONSTRAINT "PennyWise_payments_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_reminders"
    ADD CONSTRAINT "PennyWise_reminders_transaction_id_fkey" FOREIGN KEY ("transaction_id") REFERENCES "public"."PennyWise_transactions"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_reminders"
    ADD CONSTRAINT "PennyWise_reminders_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_schedules"
    ADD CONSTRAINT "PennyWise_schedules_transaction_id_fkey" FOREIGN KEY ("transaction_id") REFERENCES "public"."PennyWise_transactions"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."PennyWise_schedules"
    ADD CONSTRAINT "PennyWise_schedules_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."PennyWise_sessions"
    ADD CONSTRAINT "PennyWise_sessions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_subscription_transactions"
    ADD CONSTRAINT "PennyWise_subscription_transactions_subscription_id_fkey" FOREIGN KEY ("subscription_id") REFERENCES "public"."PennyWise_subscriptions"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_subscriptions"
    ADD CONSTRAINT "PennyWise_subscriptions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_support_ticket_comments"
    ADD CONSTRAINT "PennyWise_support_ticket_comments_ticket_id_fkey" FOREIGN KEY ("ticket_id") REFERENCES "public"."PennyWise_support_tickets"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_support_ticket_comments"
    ADD CONSTRAINT "PennyWise_support_ticket_comments_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_support_tickets"
    ADD CONSTRAINT "PennyWise_support_tickets_media_id_fkey" FOREIGN KEY ("media_id") REFERENCES "public"."PennyWise_media"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."PennyWise_support_tickets"
    ADD CONSTRAINT "PennyWise_support_tickets_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_transactions"
    ADD CONSTRAINT "PennyWise_transactions_account_id_fkey" FOREIGN KEY ("account_id") REFERENCES "public"."PennyWise_accounts"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."PennyWise_transactions"
    ADD CONSTRAINT "PennyWise_transactions_budget_id_fkey" FOREIGN KEY ("budget_id") REFERENCES "public"."PennyWise_budgets"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."PennyWise_transactions"
    ADD CONSTRAINT "PennyWise_transactions_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."PennyWise_categories"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."PennyWise_transactions"
    ADD CONSTRAINT "PennyWise_transactions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."PennyWise_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_chat_audiences"
    ADD CONSTRAINT "_chat_audiences_chat_id_fkey" FOREIGN KEY ("chat_id") REFERENCES "public"."_chats"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_chat_audiences"
    ADD CONSTRAINT "_chat_audiences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_chat_message_attachments"
    ADD CONSTRAINT "_chat_message_attachments_chat_id_fkey" FOREIGN KEY ("chat_id") REFERENCES "public"."_chats"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."_chat_message_attachments"
    ADD CONSTRAINT "_chat_message_attachments_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "public"."_events"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."_chat_message_attachments"
    ADD CONSTRAINT "_chat_message_attachments_message_id_fkey" FOREIGN KEY ("message_id") REFERENCES "public"."_chat_messages"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."_chat_messages"
    ADD CONSTRAINT "_chat_messages_chat_id_fkey" FOREIGN KEY ("chat_id") REFERENCES "public"."_chats"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_chat_messages"
    ADD CONSTRAINT "_chat_messages_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_chats"
    ADD CONSTRAINT "_chats_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_event_attendences"
    ADD CONSTRAINT "_event_attendences_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "public"."_events"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_event_attendences"
    ADD CONSTRAINT "_event_attendences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_event_audiences"
    ADD CONSTRAINT "_event_audiences_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "public"."_events"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_event_audiences"
    ADD CONSTRAINT "_event_audiences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_events"
    ADD CONSTRAINT "_events_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_friends"
    ADD CONSTRAINT "_friends_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_media"
    ADD CONSTRAINT "_media_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."_notifications"
    ADD CONSTRAINT "_notifications_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."_sessions"
    ADD CONSTRAINT "_sessions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."chat_audiences"
    ADD CONSTRAINT "chat_audiences_chat_id_fkey" FOREIGN KEY ("chat_id") REFERENCES "public"."chats"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."chat_audiences"
    ADD CONSTRAINT "chat_audiences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."chat_message_attachments"
    ADD CONSTRAINT "chat_message_attachments_chat_id_fkey" FOREIGN KEY ("chat_id") REFERENCES "public"."chats"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."chat_message_attachments"
    ADD CONSTRAINT "chat_message_attachments_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "public"."events"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."chat_message_attachments"
    ADD CONSTRAINT "chat_message_attachments_message_id_fkey" FOREIGN KEY ("message_id") REFERENCES "public"."chat_messages"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."chat_messages"
    ADD CONSTRAINT "chat_messages_chat_id_fkey" FOREIGN KEY ("chat_id") REFERENCES "public"."chats"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."chat_messages"
    ADD CONSTRAINT "chat_messages_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."chats"
    ADD CONSTRAINT "chats_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."event_attendences"
    ADD CONSTRAINT "event_attendences_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "public"."events"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."event_attendences"
    ADD CONSTRAINT "event_attendences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."event_audiences"
    ADD CONSTRAINT "event_audiences_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "public"."events"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."event_audiences"
    ADD CONSTRAINT "event_audiences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."events"
    ADD CONSTRAINT "events_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."friends"
    ADD CONSTRAINT "friends_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."media"
    ADD CONSTRAINT "media_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."sessions"
    ADD CONSTRAINT "sessions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "public"."PennyWise_fcm_tokens" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."PennyWise_sessions" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."PennyWise_transactions_meta" ENABLE ROW LEVEL SECURITY;

GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_chat_audiences" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_chat_audiences" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_chat_audiences" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_chat_messages" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_chat_messages" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_chat_messages" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_chats" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_chats" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_chats" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_event_audiences" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_event_audiences" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_event_audiences" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_events" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_events" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_events" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_friends" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_friends" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_friends" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_media" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_media" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_media" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_sessions" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_sessions" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_sessions" TO "service_role";

GRANT ALL ON TABLE "public"."IsaDate_users" TO "anon";
GRANT ALL ON TABLE "public"."IsaDate_users" TO "authenticated";
GRANT ALL ON TABLE "public"."IsaDate_users" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_accounts" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_accounts" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_accounts" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_budget_items" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_budget_items" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_budget_items" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_budgets" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_budgets" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_budgets" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_categories" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_categories" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_categories" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_fcm_tokens" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_fcm_tokens" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_fcm_tokens" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_media" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_media" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_media" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_notifications" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_notifications" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_notifications" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_payments" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_payments" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_payments" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_reminders" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_reminders" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_reminders" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_schedules" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_schedules" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_schedules" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_sessions" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_sessions" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_sessions" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_subscription_transactions" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_subscription_transactions" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_subscription_transactions" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_subscriptions" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_subscriptions" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_subscriptions" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_support_ticket_comments" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_support_ticket_comments" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_support_ticket_comments" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_support_tickets" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_support_tickets" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_support_tickets" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_transactions" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_transactions" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_transactions" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_transactions_meta" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_transactions_meta" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_transactions_meta" TO "service_role";

GRANT ALL ON TABLE "public"."PennyWise_users" TO "anon";
GRANT ALL ON TABLE "public"."PennyWise_users" TO "authenticated";
GRANT ALL ON TABLE "public"."PennyWise_users" TO "service_role";

GRANT ALL ON TABLE "public"."_chat_audiences" TO "anon";
GRANT ALL ON TABLE "public"."_chat_audiences" TO "authenticated";
GRANT ALL ON TABLE "public"."_chat_audiences" TO "service_role";

GRANT ALL ON TABLE "public"."_chat_message_attachments" TO "anon";
GRANT ALL ON TABLE "public"."_chat_message_attachments" TO "authenticated";
GRANT ALL ON TABLE "public"."_chat_message_attachments" TO "service_role";

GRANT ALL ON TABLE "public"."_chat_messages" TO "anon";
GRANT ALL ON TABLE "public"."_chat_messages" TO "authenticated";
GRANT ALL ON TABLE "public"."_chat_messages" TO "service_role";

GRANT ALL ON TABLE "public"."_chats" TO "anon";
GRANT ALL ON TABLE "public"."_chats" TO "authenticated";
GRANT ALL ON TABLE "public"."_chats" TO "service_role";

GRANT ALL ON TABLE "public"."_event_attendences" TO "anon";
GRANT ALL ON TABLE "public"."_event_attendences" TO "authenticated";
GRANT ALL ON TABLE "public"."_event_attendences" TO "service_role";

GRANT ALL ON TABLE "public"."_event_audiences" TO "anon";
GRANT ALL ON TABLE "public"."_event_audiences" TO "authenticated";
GRANT ALL ON TABLE "public"."_event_audiences" TO "service_role";

GRANT ALL ON TABLE "public"."_events" TO "anon";
GRANT ALL ON TABLE "public"."_events" TO "authenticated";
GRANT ALL ON TABLE "public"."_events" TO "service_role";

GRANT ALL ON TABLE "public"."_fcm_tokens" TO "anon";
GRANT ALL ON TABLE "public"."_fcm_tokens" TO "authenticated";
GRANT ALL ON TABLE "public"."_fcm_tokens" TO "service_role";

GRANT ALL ON TABLE "public"."_friends" TO "anon";
GRANT ALL ON TABLE "public"."_friends" TO "authenticated";
GRANT ALL ON TABLE "public"."_friends" TO "service_role";

GRANT ALL ON TABLE "public"."_media" TO "anon";
GRANT ALL ON TABLE "public"."_media" TO "authenticated";
GRANT ALL ON TABLE "public"."_media" TO "service_role";

GRANT ALL ON TABLE "public"."_notifications" TO "anon";
GRANT ALL ON TABLE "public"."_notifications" TO "authenticated";
GRANT ALL ON TABLE "public"."_notifications" TO "service_role";

GRANT ALL ON TABLE "public"."_sessions" TO "anon";
GRANT ALL ON TABLE "public"."_sessions" TO "authenticated";
GRANT ALL ON TABLE "public"."_sessions" TO "service_role";

GRANT ALL ON TABLE "public"."_users" TO "anon";
GRANT ALL ON TABLE "public"."_users" TO "authenticated";
GRANT ALL ON TABLE "public"."_users" TO "service_role";

GRANT ALL ON TABLE "public"."chat_audiences" TO "anon";
GRANT ALL ON TABLE "public"."chat_audiences" TO "authenticated";
GRANT ALL ON TABLE "public"."chat_audiences" TO "service_role";

GRANT ALL ON TABLE "public"."chat_message_attachments" TO "anon";
GRANT ALL ON TABLE "public"."chat_message_attachments" TO "authenticated";
GRANT ALL ON TABLE "public"."chat_message_attachments" TO "service_role";

GRANT ALL ON TABLE "public"."chat_messages" TO "anon";
GRANT ALL ON TABLE "public"."chat_messages" TO "authenticated";
GRANT ALL ON TABLE "public"."chat_messages" TO "service_role";

GRANT ALL ON TABLE "public"."chats" TO "anon";
GRANT ALL ON TABLE "public"."chats" TO "authenticated";
GRANT ALL ON TABLE "public"."chats" TO "service_role";

GRANT ALL ON TABLE "public"."event_attendences" TO "anon";
GRANT ALL ON TABLE "public"."event_attendences" TO "authenticated";
GRANT ALL ON TABLE "public"."event_attendences" TO "service_role";

GRANT ALL ON TABLE "public"."event_audiences" TO "anon";
GRANT ALL ON TABLE "public"."event_audiences" TO "authenticated";
GRANT ALL ON TABLE "public"."event_audiences" TO "service_role";

GRANT ALL ON TABLE "public"."events" TO "anon";
GRANT ALL ON TABLE "public"."events" TO "authenticated";
GRANT ALL ON TABLE "public"."events" TO "service_role";

GRANT ALL ON TABLE "public"."friends" TO "anon";
GRANT ALL ON TABLE "public"."friends" TO "authenticated";
GRANT ALL ON TABLE "public"."friends" TO "service_role";

GRANT ALL ON TABLE "public"."media" TO "anon";
GRANT ALL ON TABLE "public"."media" TO "authenticated";
GRANT ALL ON TABLE "public"."media" TO "service_role";

GRANT ALL ON TABLE "public"."notifications" TO "anon";
GRANT ALL ON TABLE "public"."notifications" TO "authenticated";
GRANT ALL ON TABLE "public"."notifications" TO "service_role";

GRANT ALL ON TABLE "public"."sessions" TO "anon";
GRANT ALL ON TABLE "public"."sessions" TO "authenticated";
GRANT ALL ON TABLE "public"."sessions" TO "service_role";

GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";

RESET ALL;
